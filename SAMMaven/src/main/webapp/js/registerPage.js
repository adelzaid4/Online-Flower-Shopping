/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function setConfirmPassword()
{
    
    document.getElementById("Confirmpassword").pattern=document.getElementById("password").value;
    console.log(document.getElementById("password").value);
    console.log(document.getElementById("Confirmpassword").pattern);
//    document.getElementById("Confirmpassword").setCustomValidity("password does not match");
    
    
//    $("#Confirmpassword").attr("pattern",asd);
//    console.log($("#Confirmpassword").attr("pattern"));
}
function viewpassword()
{
    console.log(document.getElementById("Confirmpassword").value);
    console.log(document.getElementById("Confirmpassword").pattern);
}


function removeProductOption(ele, selectedValue) {
    $("[name=interestsObtained]").append("<option>" + selectedValue + "</option>");
    $("#" + ele).remove();
}

var elemid = 1;

function populateInterets() {
    var selectedValue = $("[name=interestsObtained]").find(":selected").val();
   // alert("hello"+selectedValue);
    $("#chosenDiv").append("<div class='alert alert-success alert-dismissible fade in' id='parent" + elemid + "'  role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close' onclick=\"removeProductOption('parent" + elemid + "','" + selectedValue + "');\"><span aria-hidden='true'>x</span></button><input id='chosenItem'  readonly='true' name='clientInterest' type='text' value='"+selectedValue + "' style='background: transparent; border: none;'/></div>");
    $("[name=interestsObtained]").find(":selected").remove();
    $("[name=interestsObtained]").val("first").selected = true;
    elemid++;
}
