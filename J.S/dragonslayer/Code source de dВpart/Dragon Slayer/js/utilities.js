'use strict';   // Mode strict du JavaScript

/*************************************************************************************************/
/* *********************************** FONCTIONS UTILITAIRES *********************************** */
/*************************************************************************************************/



function getRandomInteger (min,max)
{

	return Math.round(Math.random()*(max-min+1)+min);
}





function requestInteger (message,min,max)
{
	var request;

do{
	request = parseInt(window.prompt(message));

}while(isNaN(request) == true || request < min || request > max);

	return request;
}