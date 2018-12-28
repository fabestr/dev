
/*****COURS**********

do {
	var name = window.prompt('nom');
	document.write('<p>'+name+'</p>');


} while(name != 'Jo');



document.write('<p>trouvé</p>')

*************************/




/*********EXERCICE SAISIE OBLIGATOIRE*******
*******************************************/

do {
	var nombre = parseFloat(window.prompt('nombre obligatoire'));
	document.write('<p>' +nombre+ '</p>');
	console.log(nombre);

} while(isNaN(nombre) == true);

document.write('bravo');




/*************Correction*******************
*******************************************
*******************************************/


var number;

do
{
	number = parseFloat(window.prompt('Veuillez saisir un nombre :'));


}
while(isNaN(number) == true );


document.write('<p>Merci, vous avez saisi <strong>' + number + '</strong>.</p>');
