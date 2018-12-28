'use strict';



const TVA = 20.0;

var montantHT;
var montantTVA;
var montantTTC;
var remise;
var remiseTaux;


montantHT = parseFloat(window.prompt('Saisissez le montant HT:'));
montantTVA = montantHT * TVA /100 ;
remise = window.prompt('voulez-vous une remise?');
console.log(remise);

if (remise == 'oui' || remise == 'yes') {
	remiseTaux = parseFloat(window.prompt('Saisissez le pourcentage de votre remise'));
}else {
	remiseTaux = 0;
}

montantTTC = montantHT - (remiseTaux/100) + montantTVA 

document.write('<p>Le Montant HT est de:'+montantHT+'</p>');
document.write('<p>Lemontant de la TVA est de:'+montantTVA);
if (remise == 'oui' || remise == 'yes') {
	document.write('<p>le pourcentage de la remise est de:'+ remiseTaux +'%</p>');
}
else {
	document.write('<p>Aucune remise n\'a été appliquée</p>');
}

document.write('<p>Le montant TTC est :'+montantTTC +'</p>');




/***************************************
			CORRIGE
***************************************/

const TAUX_DE_TVA = 20.0;

var demandeRemise;
var montantHT;
var montantTTC;
var montantTVA;
var pourcentageRemise;

montantHT = parseFloat(window.prompt('Quel est le montant HT ?'));
demandeRemise = window.prompt('Souhaitez-vous une remise ?');

if(demandeRemise == 'oui' || demandeRemise == 'yes') {

	pourcentageRemise = parseFloat(window.prompt('Montant de la remise en % :'));
   
   	montantHT = montantHT - (montantHT * pourcentageRemise / 100);

}

montantTVA = montantHT * TAUX_DE_TVA / 100;
montantTTC = montantHT + montantTVA;

document.write('<p>Pour un montant HT de ' + montantHT + ' € il y a ' + montantTVA + ' € de TVA.</p>');
document.write('<p>Le montant TTC est donc de ' + montantTTC + ' €.</p>');

if(demandeRemise == 'oui' || demandeRemise == 'yes')
{
    document.write('<p>Une remise de ' + pourcentageRemise + '% a été appliquée sur le montant HT.</p>');

} else {

	    document.write("<p>Aucune remise n'a été appliquée.</p>");


}


