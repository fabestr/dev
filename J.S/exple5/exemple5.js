'use strict'


var nanard = {};


nanard.name = 'Bernard';
nanard['age'] = 68;
nanard.animal = 'chien';
nanard.voiture = 'Renault 21';
nanard.alcool = 'ricard';

var nanard = {
				name: 'Bernard',
                age : 68,
                animal: 'dog',
                voiture: 'R21',
                alcool: 'ricard'
             };

console.log(nanard);

console.log(nanard.alcool);

//document.write(nanard.name);


///////////////EXO VOITURE///////////////////


var passager = ['monique','manu'];
var voiture = {
				marque:'audi',
				annee:'2015',
				dateAchat: '01-02-2017',
				passager:''+passager+'',
			

};



document.write('<h1>LA VOITURE</h1><ul><li>'+voiture.marque+'</li><li> '+voiture.annee+'</li><li> '+voiture.dateAchat+' </li><li>'+voiture.passager+'</li></ul>');



/**********************CORRIGER*******************/



var myCar = new Object();

myCar.brand         = 'Alfa Roméo';
myCar.buyDate       = new Date('2013-06-20');
myCar.passengers    = new Array();
myCar.passengers[0] = 'Nicolas';
myCar.passengers[1] = 'Charlotte';
myCar.year          = 2012;



document.write('<ul>');
document.write('<li>Marque : ' + myCar.brand + '</li>');
document.write('<li>Année de fabrication : ' + myCar.year + '</li>');
document.write("<li>Date de l'achat : " + myCar.buyDate.toDateString() + '</li>');
document.write('<li>Passager 1 : ' + myCar.passengers[0] + '</li>');
document.write('<li>Passager 2 : ' + myCar.passengers[1] + '</li>');
document.write('</ul>');


myCar = {
			brand: 'Alfa Roméo',
            passengers : ['Nico', 'Nanard'],
            year: 2012

		}

