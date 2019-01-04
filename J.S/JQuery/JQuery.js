'use strict';

// natif 
//test 1 js
/*var para2 = document.getElementById('para2');
var para = document.querySelectorAll('.para');

para2.style.color = "red";
para2.style.backgroundColor = "blue";

//test 2js
for(var i = 0; i < para.length; i++) {

	para[i].addEventListener('click', togglePink);

}

function togglePink() {

	this.classList.toggle('pink');

}*/

// jquery 
//test 1 jquery
$('#para2').css('color', 'red');
$('#para2').css('background-color', 'blue');

//test 2 jquery
$('.para').on('click', togglePink);

function togglePink() {

    $(this).toggleClass('pink');
    //  $(this).addClass('pink');
	//$(this).removeClass('pink');
}

$('#send').on('click', changePara);

function changePara() {
	
    $('#container2').html('<p>remplacement par ce qui a dans html</p>');
    $('#container').append('<p class="para" id="para4">para4</p>');// rajoute le contenu a la fin 
}


//Pour faire une demande AJAX pour zvoir du HTML
$.get('endroit où se trouve mon fichier', myFunction);

function myFunction(response) {

	console.log(response);

}


//Pour recupe une demande Json
$.getJSON('endroit où se trouve mon fichier', myFunction);