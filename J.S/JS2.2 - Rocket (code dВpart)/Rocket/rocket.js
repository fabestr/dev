'use strict';

/***********************************************************************************/
/* *********************************** DONNEES *************************************/
/***********************************************************************************/
var timer = document.querySelector('#billboard span');
var button = document.getElementById('firingButton');
var rocket = document.getElementById('rocket');
var started = 10;
var time;
var stop = document.getElementById('stopButton');
var reclear=document.getElementById('clearButton');
//var image = rocket.setAttribute('src');
/***********************************************************************************/
/* ********************************** FONCTIONS ************************************/
/***********************************************************************************/


function push()
{
	time = window.setInterval(timing,1000);
	rocket.setAttribute('src','images/rocket2.gif');
}

function timing()
{
	started-=1;
	timer.textContent = started;

	if(started == 0)
	{
		window.clearInterval(time);
		rocket.setAttribute('src','images/rocket3.gif');
		rocket.classList.add('tookOff');

	}
}


function stopping()
{
	window.clearInterval(time);
}

function clear()
{
	started ==9;
}


/************************************************************************************/
/* ******************************** CODE PRINCIPAL **********************************/
/************************************************************************************/
button.addEventListener('click',push);
stop.addEventListener('click',stopping);
reclear.addEventListener('click',clear);











/****************************************************************************
*********************************CORRECTION**********************************
****************************************************************************/
/*
var rocket = document.getElementById('rocket');
var billboard = document.querySelector('#billboard span');
var firingButton  = document.getElementById('firingButton');
var count = 10;
var timer;

function onClickFiringButton()
{

	timer = setInterval(countDown, 1000);
	rocket.src = 'images/rocket2.gif';
    
    window.setTimeout(out, count * 1000)

}


function out() {
	
    rocket.src = 'images/rocket3.gif';
    rocket.classList.add('tookOff');
    firingButton.removeEventListener('click', onClickFiringButton);
    

}


function countDown()
{
	billboard.textContent = count;
	count--;
    
    if( count == -1 ){
        
        clearInterval(timer);
        //rocket.src = 'images/rocket3.gif';
        //rocket.classList.add('tookOff');
        //firingButton.removeEventListener('click', onClickFiringButton);
    }

}






firingButton.addEventListener('click', onClickFiringButton);
*/