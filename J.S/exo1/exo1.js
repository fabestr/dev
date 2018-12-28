'use strict';/* permet dafficher plus derreur dans linspecteur*/

var HT = 158.6;

const TVA = 0.2;

var TTC = HT * (1+TVA);


document.write("<p>Montant HT:" +HT+ "</p>");
document.write("<p>Taux de TVA:" +TVA+"</p>");
document.write("<p>Le montant TTC:"+TTC+"</p>");


var montantHT = parseFloat(window.prompt('Montant HT'));
var montantTVA = montantHT * 0.2;
var montantTTC = montantHT + montantTVA;

document.write("<p>Montant HT:"+montantHT+"</p>");
document.write("<p>Montant TVA:"+montantTVA+"</p>");
document.write("<p>Montant TTC:"+montantTTC+"</p>");


/*********CORRIGE********************/

const TAUX_DE_TVA = 20.0;

var montantHT;
var montantTTC;
var montantTVA;


montantHT = window.prompt('Quel est le montant HT ?');

montantHT = parseFloat(montantHT);

montantTVA = (montantHT * TAUX_DE_TVA) / 100;

montantTTC = montantHT + montantTVA;

document.write('<p>Pour un montant HT de ' + montantHT + ' € il y a ' + montantTVA + ' € de TVA.</p>');
document.write('<p>Le montant TTC est donc de ' + montantTTC + ' €.</p>');
