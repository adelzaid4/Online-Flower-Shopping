function  viewImage(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#pro_img')
                    .attr('src', e.target.result);
        };
        reader.readAsDataURL(input.files[0]);
    }
}
$("#cancel").click(function () {
    location.href = "MainAdmin.jsp";
});
var elemsid = 1;
function removeFlowerOption(ele, selectedValue) {
    $("[name=flowerObtained]").append("<option>" + selectedValue + "</option>");
    $("#" + ele).remove();
}
function populateFlowers() {
    var selectedValue = $("[name=flowerObtained]").find(":selected").val();
    $("#chosenDiv").append("<div class='alert alert-success alert-dismissible fade in' id='parent" + elemsid + "'  role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close' onclick=\"removeFlowerOption('parent" + elemsid + "','" + selectedValue + "');\"><span aria-hidden='true'>x</span></button><input id='chosenItem'  readonly='true' name='flower" + elemsid + "' type='text' value='" + selectedValue + "' style='background: transparent; border: none;'/></div>");
    $("[name=flowerObtained]").find(":selected").remove();
    $("[name=flowerObtained]").val("first").selected = true;
    elemsid++;
}


function removeProductOption(ele, selectedValue) {
    $("[name=productsObtained]").append("<option>" + selectedValue + "</option>");
    $("#" + ele).remove();
}
function populateProducts() {
    var selectedValue = $("[name=productsObtained]").find(":selected").val();
    $("#chosenDiv").append("<div class='alert alert-success alert-dismissible fade in' id='parent" + elemsid + "'  role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close' onclick=\"removeProductOption('parent" + elemsid + "','" + selectedValue + "');\"><span aria-hidden='true'>x</span></button><input id='chosenItem'  readonly='true' name='bouqet' type='text' value='" + selectedValue + "' style='background: transparent; border: none;'/></div>");
    $("[name=productsObtained]").find(":selected").remove();
    $("[name=productsObtained]").val("first").selected = true;
    elemsid++;
}
function validatePassword() {
    var pass1 = document.getElementById("password").value;
    var pass2 = document.getElementById("confirmPassword").value;
    var ok = true;
    if (pass1 != pass2 || pass1 == "" || pass2 == "") {
//alert("Passwords Do not match");
        document.getElementById("password").style.borderColor = "#E34234";
        document.getElementById("confirmPassword").style.borderColor = "#E34234";
        ok = false;
    } else {
        document.getElementById("password").style.borderColor = "green";
        document.getElementById("confirmPassword").style.borderColor = "green";
    }
    return ok;
}

function validateMobile() {
    var mobformat = /^01[0-2][0-9]{8}$/;
    if (!mobformat.test(document.getElementById("phone").value)) {
        document.getElementById("phone").style.borderColor = "#E34234";
    } else {
        document.getElementById("phone").style.borderColor = "";
    }

}
var userId;
var categoryId;
var productId;
function setPname(name, id) {
    var x = name;
    console.log(x);
    $('#pname').html(x);
    console.log(id);
    userId = id;
    console.log(userId);
}
function setCname(name, id) {

    $('#cname').html(name);
    console.log(id);
    categoryId = id;
}

function productSetName(name, id) {

    $('#productName').html(name);
    console.log(id);
    productId = id;
}

// server
function sendClientId() {
    console.log(userId);
    var arr = {'id': userId};
    $.ajax({url: "../RemoveClientServlet?date=" + new Date().getTime(),
        type: 'GET',
        contentType: 'application/json',
        data: arr,
        success: function (data, textStatus, jqXHR) {
            location.reload(true);
        }
    });
    $('#no').click();
}

function deleteCategoryId() {



    var arr = {'id': categoryId};
    $.ajax({url: "../RemoveCategoryServlet?date=" + new Date().getTime(),
        type: 'GET',
        contentType: 'application/json',
        data: arr,
        success: function (data, textStatus, jqXHR) {
            location.reload(true);
        }
    });
    $('#no').click();
}

function deleteProductId() {



    var arr = {'id': productId};
    console.log(arr);
    $.ajax({url: "../RemoveProductServlet?date=" + new Date().getTime(),
        type: 'GET',
        contentType: 'application/json',
        data: arr,
        success: function (data, textStatus, jqXHR) {
            location.reload(true);
        }
    });
    $('#no').click();
}

var j = echarts.init(document.getElementById("echart_pie"));
var catArr = [];
var catArrNo = [];
$("#obtainedCats option").each(function () {
    catArr.push($(this).html());
});
$("#obtainedCatsNo option").each(function () {
    catArrNo.push($(this).html());
});
var jsonarray = new Array();
for (i = 0; i < catArr.length; i++)
{
    jsonelem = {value: catArrNo[i], name: catArr[i]};
    jsonarray.push(jsonelem);
}
j.setOption({
    tooltip: {trigger: "item", formatter: "{a} <br/>{b} : {c} ({d}%)"},
    legend: {x: "center", y: "430px", data: catArr},
    toolbox: {show: true, feature: {magicType: {show: !0, type: ["pie", "funnel"], option: {funnel: {x: "50%", width: "50%", funnelAlign: "left", max: 1548}}}, restore: {show: !0, title: "Restore"}, saveAsImage: {show: !0, title: "Save Image"}}},
    calculable: !0, series: [{name: "No. of Bouquets", type: "pie", radius: "90%", center: ["50%", "48%"], data: jsonarray}]});

function checkProductName() {
    var productName = $("#name").val();
    var jsonData = {name: productName};
    $.ajax({url: "../CheckProductServlet?date=" + new Date().toString(),
        type: "GET",
        contentType: 'application/json',
        data: jsonData,
        
        success: function (data, textStatus, jqXHR) {
          
            $("#state").html(data);

        }});
}
function checkCategoryName() {
    var categoryName = $("#name").val();
    var jsonData = {"name": categoryName};
    $.ajax({url: "../CheckCategoryServlet?date=" + new Date().toString(),
        type: "GET",
        contentType: 'application/json',
        data: jsonData,
        
        success: function (data, textStatus, jqXHR) {
            console.log(data);
            $("#state").html(data);

        }});
}
function checkFlowerName() {
    var categoryName = $("#name").val();
    var jsonData = {"name": categoryName};
    $.ajax({url: "../CheckFlowerServlet?date=" + new Date().toString(),
        type: "GET",
        contentType: 'application/json',
        data: jsonData,
        
        success: function (data, textStatus, jqXHR) {
            console.log(data);
            $("#state").html(data);

        }});
}