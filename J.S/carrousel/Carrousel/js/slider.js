'use strict';   // Mode strict du JavaScript

/*************************************************************************************************/
/* ****************************************** DONNEES ****************************************** */
/*************************************************************************************************/
var barreOutil = document.getElementById('toolbar-toggle');
var buttons = document.querySelector('ul');
var fleche = document.querySelector('#toolbar-toggle i');
var image = ["images/1.jpg", "images/2.jpg", "images/3.jpg", "images/4.jpg", "images/5.jpg","images/6.jpg"];
var titreImage = ['street Art','Fast Lane', 'Colorful Building','Skyscraper', 'City by Night', 'tour Eiffil'];
var slider = document.querySelector('#slider img');
var nextButton= document.getElementById('slider-next');
var i=0;
var previewButton = document.getElementById('slider-previous');
var playButton = document.getElementById('slider-toggle');
var time;
var imagePlay = document.querySelector('#slider-toggle i');
var randomButton = document.getElementById('slider-random');
var isPlaying = false;
var titre = document.querySelector('figcaption');
var test;
/*************************************************************************************************/
/* ***************************************** FONCTIONS ***************************************** */
/*************************************************************************************************/
function appear()
{
	buttons.classList.toggle('hide');
	fleche.classList.toggle("fa-arrow-down");
	fleche.classList.toggle("fa-arrow-right");

}

function next()
{
	
	
	if(i >= 5)
	{
		i= 0;

	} else {
		i++;
	}
	
	slider.src = image[i];
	titre.textContent = titreImage[i];
	
}

function preview()
{
	
	
	if(i <= 0)
	{
		i= 5;

	}else {
		i--;
	}
	console.log(i);
	slider.src = image[i];
	titre.textContent = titreImage[i];
}

function play()
{

	if(isPlaying == false)
	{
		time = window.setInterval(next,2000);
		isPlaying = true;
	}else{
		window.clearInterval(time);
		isPlaying = false;
	}
	

	imagePlay.classList.toggle('fa-play');
	imagePlay.classList.toggle('fa-pause');

}


function random()
{
	i = Math.round(Math.random()*(5-0+1)-0);
	slider.src = image[i];
}




function myFonction(event)
{
	console.log(event.keyCode);
	//gauche 37 

	if (event.keyCode == 37) {
		preview();
	} else if(event.keyCode == 39){
		next();
	}else if (event.keyCode == 13){
		appear();
	}else if (event.keyCode == 32){
		play();
	}else if (event.keyCode == 38 || 40){
		random();
	}


}

/*************************************************************************************************/
/* ************************************** CODE PRINCIPAL *************************************** */
/*************************************************************************************************/
barreOutil.addEventListener('click',appear);
slider.src = image[i];
titre.textContent = titreImage[i];
nextButton.addEventListener('click',next);
previewButton.addEventListener('click',preview);
playButton.addEventListener('click',play);
randomButton.addEventListener('click',random);



document.addEventListener('keyup', myFonction);


