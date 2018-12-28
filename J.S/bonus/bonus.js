'use strict';

var ordi;
var joueur;
var tentative = 0;





function joueEncore (min,max)
{

	return Math.round(Math.random()*(max-min+1)+min);
}


ordi = joueEncore(1,500);


do
{
	joueur = parseInt(window.prompt('devines le chiffre de l\'ordi'));
	tentative++;

	if(joueur < ordi){
		window.alert('plus grand!');
	}else if (joueur > ordi){
		window.alert('plus petit!');
	}else{
		window.alert('beau gosse!!!!');
	}


}
while(ordi != joueur);


document.write('<p> Vous avez trouvé le chiffre '+ordi+ ' de l\'ordi en '+tentative+' tentatives!');