/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function  addExtraToStorage(id, quantity)
{
    var extrasId = JSON.parse(localStorage.getItem("extrasId"));
    if (extrasId == null)
    {
        extrasId = new Array();
        localStorage.setItem("extrasId", JSON.stringify(new Array()));
    }
    notExist = true;
    for (i = 0; i < extrasId.length; i++)
    {
        if (extrasId[i] == "extra" + id)
        {
            notExist = false;
            break;
        }
    }
    localStorage.setItem("extra" + id,quantity.value);
    if (notExist == true)
    {
        extrasId = JSON.parse(localStorage.getItem("extrasId"));
        extrasId.push("extra" + id);
        localStorage.setItem("extrasId", JSON.stringify(extrasId));
    }

}
function removeFromExtraCart(id)
{
    var extrasId = JSON.parse(localStorage.getItem("extrasId"));
    if (extrasId != null)
    {
        localStorage.removeItem("extra" + id);
        for (i = 0; i < extrasId.length; i++)
        {
            if ((extrasId[i]) == "extra" + id)
            {
                extrasId.splice(i, 1);
                break;
            }
        }
        localStorage.setItem("extrasId", JSON.stringify(extrasId));
    }
}
function calcExtraPrice(id, quantity)
{
    if (quantity.value > 0)
        addExtraToStorage(id, quantity);
    else
        removeFromExtraCart(id)
    document.getElementById("ExtratotalPrice" + id).innerHTML = parseFloat(document.getElementById("price" + id).innerHTML) * quantity.value;
    calcExtratotalprice();
}
function calcExtratotalprice()
{
    var total = 0;
    extras = document.getElementsByName("ExtratotalPrice");
    for (i = 0; i < extras.length; i++)
    {
        asd = extras[i].childNodes[0].data;
        total += parseInt(extras[i].childNodes[0].data);
    }
    document.getElementById("totalPrice").innerHTML = '$' + total;

}