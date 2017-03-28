var checkOutPrice = 0;
var netPrice;
var index = 0;
function getProductsDetails()
{
    var productsId = {'productsId': localStorage.getItem("ProductsId")};
    $.ajax({url: "GetProductsDetail?date=" + new Date().toString(), type: "GET", contentType: 'application/json', data: productsId,
        dataType: 'json', success: function (data, textStatus, jqXHR) {
            console.log(data);
            for (i = 0; i < data.length; i++)
            {
                var row = '<tr><td><a href="#">' + '<img src="' + data[i].imageUrl + '" alt="Black Blouse Armani"></a></td>\n\
                            <td><a id="productname' + data[i].id + '" >' + data[i].productName + '</a></td><td> <a>' + localStorage.getItem(data[i].id.toString()) + '</a></td><td><div id="price'
                        + data[i].id + '">' + data[i].unitPrice + '</td><td>$0.00</td><td><div id="ProducttotalPrice' +
                        data[i].id + '" name="ProducttotalPrice">' + parseInt(localStorage.getItem(data[i].id.toString())) * parseInt(data[i].unitPrice) + '</td></tr>';
                $("#orderReviewTable").append(row);
                checkOutPrice += parseInt(localStorage.getItem(data[i].id.toString())) * parseInt(data[i].unitPrice);
            }
            $("#bouquetsTotal").html("$" + checkOutPrice + ".00");
            getExtraDetail();
//            calctotalprice();
        }
    }
    );
//    calctotalprice();
}
function calctotalprice()
{
    var total = 0;
    products = document.getElementsByName("ProducttotalPrice");
    document.getElementById("totalPrice").innerHTML = '$' + checkOutPrice;
    $("#totalBefore").html("$" + parseInt(checkOutPrice));
    if (checkOutPrice >= 500)
    {
//        $("#DiscountTotal").html("$"+ parseFloat(checkOutPrice*0.2).toPrecision(2));
//        $("#TotalReceipt").html("$"+ parseFloat(checkOutPrice*0.8).toPrecision(2));
        $("#DiscountTotal").html("$" + parseInt(checkOutPrice * 0.2));
        $("#TotalReceipt").html("$" + parseInt(checkOutPrice * 0.8));
        netPrice = checkOutPrice * 0.8;
    } else
    {
        $("#DiscountTotal").html("$0.00");
        $("#TotalReceipt").html("$" + checkOutPrice + ".00");
        netPrice = checkOutPrice;
    }

}

function getExtraDetail()
{
    var ids = new Array();
    extraIds = JSON.parse(localStorage.getItem("extrasId"));
    if (extraIds != null)
    {
        for (i = 0; i < extraIds.length; i++)
        {
            console.log(extraIds[i].substring(5));
            ids.push(parseInt(extraIds[i].substring(5)));

        }
        var extrasId = {'extrasId': JSON.stringify(ids)};
        $.ajax({url: "GetExtraDetail?date=" + new Date().toString(), type: "GET", contentType: 'application/json', data: extrasId,
            dataType: 'json', success: function (data, textStatus, jqXHR) {
//                   console.log(data);
                var extratotalPrice = 0;
                for (i = 0; i < data.length; i++)
                {
                    console.log(data[i]);
                    var row = '<tr><td><a href="#">' + '<img src="' + data[i].image.url + '" alt="Black Blouse Armani"></a></td>\n\
                            <td><a >' + data[i].name + '</a></td><td> <a>' + localStorage.getItem("extra" + data[i].id) + '</a></td><td><div id="price'
                            + data[i].id + '">' + parseInt(data[i].price) + '</td><td>$0.00</td><td><div id="ProducttotalPrice' +
                            data[i].id + '" name="ProducttotalPrice">' + parseInt(localStorage.getItem("extra" + data[i].id)) * parseInt(data[i].price) + '</td></tr>';
                    $("#orderReviewTable").append(row);
                    checkOutPrice += parseInt(localStorage.getItem("extra" + data[i].id)) * parseInt(data[i].price);
                    extratotalPrice += parseInt(localStorage.getItem("extra" + data[i].id)) * parseInt(data[i].price);
                }
                $("#ExtrasTotal").html("$" + extratotalPrice + ".00");
                calctotalprice();
            }
        }
        );

    } else
    {
        $("#ExtrasTotal").html("$0.00");
        calctotalprice();
    }
}
function buy()
{

    var ids = new Array();
    extraIds = JSON.parse(localStorage.getItem("extrasId"));
    if (extraIds != null) {
        for (i = 0; i < extraIds.length; i++)
        {

            ids.push({'id': parseInt(extraIds[i].substring(5)), 'quantity': localStorage.getItem(extraIds[i])});
            console.log({'id': parseInt(extraIds[i].substring(5)), 'quantity': localStorage.getItem(extraIds[i])});
        }
    }
//    ids.push({price: netPrice});
    var extrasId = JSON.stringify({ids, price: netPrice});
    var jsonBuy = {buyorder: extrasId};
    $.ajax({url: "BuyExtras?date=" + new Date().toString(), type: "GET", contentType: 'application/json',
        data: jsonBuy, success: function (data, textStatus, jqXHR) {
            if (data == "true")
            {
                var productsId = JSON.parse(localStorage.getItem("ProductsId"));
                if (productsId != null)
                {

                    for (i = 0; i < productsId.length; i++)
                    {
                        localStorage.removeItem(productsId[i]);
                    }
                    localStorage.removeItem("ProductsId");
                }
                extraIds = JSON.parse(localStorage.getItem("extrasId"));
                if (extraIds != null)
                {
                    for (i = 0; i < extraIds.length; i++)
                    {
                        localStorage.removeItem(extraIds[i]);
                    }
                    localStorage.removeItem("extrasId");
                }
                $("#goToIndexPage").trigger('click');
//                location.reload();
            } else
            {
                console.log("invalid credit");
                new PNotify({
                    title: 'Sorry',
                    text: 'your credit limit is not enought',
                    type: 'error',
                    styling: 'bootstrap3'
                });
                $("#checkouterror").html("your credit limit is not enought");
                $("#buyButton").prop("disabled", true);
            }


        }});
    console.log(jsonBuy);
}
function CheckOutcheckAvaliableQuantity(pid, quantity) {


    jsondata = {localProduct: JSON.stringify({id: pid, value: quantity})};
    $.ajax({url: "CheckAvailableQuantity?date=" + new Date().toString(), type: "GET", contentType: 'application/json', data: jsondata
        , success: function (data, textStatus, jqXHR) {
            console.log(quantity);
            console.log(quantity.value);
            if (parseInt(data) < quantity)
            {

                new PNotify({
                    title: 'Sorry',
                    text: 'The MAX quantity for ' + $("#productname" + pid).html() + 'is ' + data,
                    type: 'error',
                    styling: 'bootstrap3'
                });
                $("#checkouterror").html("sorry the max quantity for " + $("#productname" + pid).html() + "is " + data);
                $("#buyButton").prop("disabled", true);
            } else
            {
                checkoutQuantity();
            }
        }});

}
function  checkoutQuantity() {
    var producdsid = JSON.parse(localStorage.getItem("ProductsId"));


    if (producdsid != null)
    {
        if (index == producdsid.length)
        {
            console.log($("#buyButton").prop("disabled"));
            if ($("#buyButton").prop("disabled") == false)
            {
                buy();

            }
        } else
        {
            CheckOutcheckAvaliableQuantity(producdsid[index], localStorage.getItem(producdsid[index].toString()));
            index++;
        }

    }

}