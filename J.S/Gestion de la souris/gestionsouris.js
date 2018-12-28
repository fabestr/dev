'use strict'


/*************************************************************************************************/
/* **************************************** VARIABLES ********************************************/
/*************************************************************************************************/
var rectangle = document.querySelector('.rectangle');
var togglerectangle = document.getElementById('toggle-rectangle');




/*************************************************************************************************/
/* *************************************** FONCTIONS *********************************************/
/*************************************************************************************************/

function disapear() 
{
	rectangle.classList.toggle('hidde');
}

function over()
{
	rectangle.classList.toggle('important');
}

function cliqueTwice()
{
	rectangle.classList.toggle('good');
}

function remove()
{
	rectangle.classList.remove('hidde','important','good');
}

/*************************************************************************************************/
/* ************************************** CODE PRINCIPAL *************************************** */
/*************************************************************************************************/
togglerectangle.addEventListener('click', disapear);
rectangle.addEventListener('mouseover' , over );
rectangle.addEventListener('dblclick' , cliqueTwice );
rectangle.addEventListener('mouseout', remove);
