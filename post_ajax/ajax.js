'use strict';

function onAjaxChangeDb(event) {
    event.preventDefault();

    var query = $('#changedString').val();

    console.log(query);

    var value = { 'query': query }// il faut le creer en objet pour pouvoir lenvoyer en php
   
    $.ajax({
        url: "modif.php",
        type: "POST",
        data: value,
    })
	.done(callB)
	.fail( function(error) {
    	
        console.log(error);
    
    });
}


function callB(res) {

    console.log(JSON.parse(res));

    var response = JSON.parse(res)
    
    $('p').text(response.query);
    
}

$('#changeText').on('click', onAjaxChangeDb);
