'use strict';



var ordi;
var joueur;



ordi = Math.round(Math.random()*(3-1+1)+1);
joueur = window.prompt('<p>Pierre / Feuille / Ciseau?</p>').toLowerCase();

if(ordi=1) {
	document.write('<p>L\'ordi a choisi pierre!</p>');
}else if (ordi=2) {
	document.write('<p>L\'ordi a choisi feuille!</p>');
}else {
	document.write('<p>L\'ordi a choisi ciseau!</p>');
}




switch(joueur){
	case 'pierre':
		if(ordi= 1) {
			document.write('<p>Match nul</p>');
		}else if(ordi=2) {
			document.write('<p>Vous avez perdu!</p>');
		}else {
			document.write('<p>Bravo vous avez gagné!!!</p>');
		}
	break;

	case 'feuille':
		if(ordi= 1) {
			document.write('<p>Bravo vous avez gagné!!!</p>');
		}else if(ordi=2) {
			document.write('<p>Match nul</p>');
		}else {
			document.write('<p>Vous avez perdu!</p>');
		}
	break;

	case 'ciseau':
		if(ordi= 1) {
			document.write('<p>Vous avez perdu!</p>');
		}else if(ordi=2) {
			document.write('<p>Bravo vous avez gagné!!!</p>');
		}else {
			document.write('<p>Match nul</p>');
		}
	break;

	default:
		window.alert('Vérifiez votre orthographe!');

}




/***************************************************
*************CORRIGE********************************
***************************************************/


var computer;
var player;
var random;

player = window.prompt('Que choisissez-vous : pierre, feuille ou ciseau ?');
player = player.toLowerCase();

random = Math.random();

if(random < 1 / 3)          // Entre 0.00 et ~0.33 : l'ordinateur sélectionne la pierre
{
    computer = 'pierre';
}
else if(random < 2 / 3)     // Entre ~0.33 et ~0.66 : l'ordinateur sélectionne la feuille
{
    computer = 'feuille';
}
else                        // Au-delà de ~0.66 : l'ordinateur sélectionne le ciseau
{
    computer = 'ciseau';
}

document.write("<p>Choix de l'ordinateur : <strong>" + computer + '</strong></p>');


if(computer == player)
{
    document.write('<p>Vous avez choisi la même chose : égalité !</p>');
}
else
{
	switch(computer) {
    	case 'pierre': 
            if(player == 'feuille')
            {
                document.write('<p>La feuille enveloppe la pierre : vous gagnez !</p>');
            }
            else // player == 'ciseau'
            {
                document.write('<p>Le ciseau est écrasé par la pierre : vous perdez !</p>');
            }
        break;
        
        case 'feuille':
            if(player == 'pierre')
            {
                document.write('<p>La pierre est enveloppée par la feuille : vous perdez !</p>');
            }
            else // player == 'ciseau'
            {
                document.write('<p>Le ciseau découpe la feuille : vous gagnez !</p>');
            }
        break;
        
        case 'ciseau':
            if(player == 'pierre')
            {
                document.write('<p>La pierre écrase le ciseau : vous gagnez !</p>');
            }
            else // player == 'feuille'
            {
                document.write('<p>La feuille est découpée par le ciseau : vous perdez !</p>');
            }
        break;
    }
}
















