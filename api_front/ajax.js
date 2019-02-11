'use strict';

$.getJSON('http://10.10.109.33/apiback/employees.php', allEmployees);


function allEmployees(response) {

    console.log(response);
}


$.getJSON('http://10.10.109.33/apiback/customer.php?api_key=aze&id=103', customerOne);

function customerOne (response) {

    console.log(response);
}


$.getJSON('http://10.10.109.33/apiback/office.php', officeShow);

function officeShow (response) {

    console.log(response);
}


$.getJSON('http://10.10.109.33/apiback/office.php?id=3', officeId3Show);

function officeId3Show (response) {

    console.log(response);
}


$('#submitCN').on('click',ajax);

function ajax (event){

    event.preventDefault();
    var input = $('#customerName').val();
    $.getJSON('http://10.10.109.52/api_back/customer.php?api_key=aze&keyword='+input, keyWord);
}



function keyWord (response) {
    console.log(response);
    for (var i = 0; i< response.length;i++){
        $('#result').append('<p>numéro :'+response[i].customerNumber+', nom: '+response[i].customerName+'</p>');
    }
    
}