'use strict';



var nombre1;
var nombre2;
var operation;
var resultat;


nombre1 = parseFloat(window.prompt('<p>saisissez votre premier nombre</p>'));
nombre2 = parseFloat(window.prompt('<p>saisissez votre second nombre</p>'));
operation = (window.prompt('<p>saisissez l\'opération souhaitée</p>'));



if (isNaN(nombre1) == false && isNaN(nombre2) == false) {


	switch (operation) {
		case '+':
		case 'addition':
		resultat = nombre1 + nombre2;
		document.write('<p>votre résultat est'+ resultat+ '</p> ');
		break;

		case '-':
		case 'soustraction':
		resultat = nombre1 - nombre2;
		document.write('<p>votre résultat est'+ resultat+'</p> ');
		break;

		case '*':
		case 'multiplication':
		resultat = nombre1 * nombre2;
		document.write('<p>votre résultat est' +resultat+'</p> ');
		break;

		case '/':
		case 'division':
		if ( nombre2 == 0){
			window.alert('Impossible')
		}else {
			resultat = nombre1 / nombre2;
			document.write('<p>votre résultat est'+ resultat+'</p> ')
		}

		break;

		case '^':
		case 'puissance':
		resultat = nombre1 ** nombre2;
		document.write('<p>votre résultat est'+ resultat+'</p> ');
		break;

		default:
		document.write( '</p>cette opération n\'est pas possible'+'</p> ');
	}

}else {
	window.alert('On t\'a demandé des chiffres!!!!');
}



/***************CORRIGE**************/

var number1;
var number2;
var operation;
var result;

number1   = parseFloat(window.prompt('Saisissez un premier nombre :'));
number2   = parseFloat(window.prompt('Saisissez un deuxième nombre :'));
operation = window.prompt('Quelle opération mathématique souhaitez-vous effectuer ?');


switch(operation)
{
	case '+':
	case 'addition':
    result = number1 + number2;
    break;
    
    case '-':
    case 'soustraction':
    result = number1 - number2;
    break;
    
    case '*':
    case 'multiplication':
    result = number1 * number2;
    break;
    
    case '/':
    case 'division':
    
    if(number2 == 0)
   	{
       document.write('<p>Erreur : vous ne pouvez pas diviser un nombre par 0 !</p>');

       break;
   	}
    
    result = number1 / number2;
    
    case '^':
    case 'puissance':
    result = number1 ** number2;
    break;

    default:
    document.write("<p>Erreur : vous avez indiqué une opération inconnue !</p>");
    break;

}

if(isNaN(result) == true)
{
	document.write("<p>Vous n'avez pas saisi deux nombres !</p>");
	result = undefined;

}

if(result != undefined)
{
    document.write("<p>Le résultat de l'opération est <strong>" + result + '</strong>.</p>');
}
