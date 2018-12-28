'use strict';


/*************************************************************************************************/
/* ****************************************** DONNEES ****************************************** */
/*************************************************************************************************/
var photoList = document.getElementById('photo-list');
var image = document.querySelectorAll('li');
var totalSelect = document.querySelector('#total span');
console.log(image);
/*************************************************************************************************/
/* ***************************************** FONCTIONS ***************************************** */
/*************************************************************************************************/
function selected()
{
	this.classList.toggle('selected');
	var selectedPict = document.querySelectorAll('.selected');
	console.log(selectedPict);
	console.log(selectedPict.length);
	totalSelect.textContent = selectedPict.length;

}


/*************************************************************************************************/
/* ************************************** CODE PRINCIPAL *************************************** */
/*************************************************************************************************/


for(var i= 0; i < image.length; i++) {
	image[i].addEventListener('click',selected);
	
}
