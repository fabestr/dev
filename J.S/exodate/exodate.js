/*S1.1 - Date du Jour
Enoncé
Afficher dynamiquement la date du jour en HTML sous la forme “Nous sommes le Mardi 11 Février 2014”.

Détails
Il va falloir se servir de tableaux pour afficher en français les noms des jours de la semaine et des mois...
Rappels
La classe Date possède une méthode pour extraire chaque partie de la date et de l'heure
Attention aux valeurs renvoyées par chaque méthode, bien lire la documentation
Modifié le: mercredi 4 octobre 2017, 12:20
Passer Informations Générales
Cacher bloc Informations GénéralesDéplacer vers le dock
INFORMATIONS GÉNÉRALES
Règlement Intérieur 3W Academy
Passer Navigation
Cacher bloc NavigationDéplacer vers le dock
NAVIGATION
Tableau de bord

Accueil du site

Pages du site

Mes cours

Promotion PA126 - Novembre 2018

Développement PA126 - Novembre 2018

Participants

BadgesBadges*/

var date = new Date();


var day = new Array();

day[1] = "Lundi";
day[2] = "Mardi";
day[3] = 'Mercredi';
day[4] = 'Jeudi';
day[5] = 'Vendredi';
day[6] = 'Samedi';
day[0] = 'Dimanche';


var month = new Array();

month[0] = 'Janvier';
month[1] = 'Février';
month[2] = 'Mars';
month[3] = 'Avril';
month[4] = 'Mai';
month[5] ='Juin';
month[6] = 'Juillet';
month[7] = 'Aoùt';
month[8] = 'Septembre';
month[9] = 'Octobre';
month[10] = 'Novembre';
month[11] = 'Décembre';


var jour = day[date.getDay()];
var chiffre = date.getDate();
var mois = month[date.getMonth()];
var annee = date.getFullYear();

document.write('<p>Nous sommes le:'+jour+' '+chiffre+' '+mois+' '+annee+ '</p>');




document.write('<p>Nous sommes le:'+day[date.getDay()]+' '+date.getDate()+' '+month[date.getMonth()]+' '+date.getFullYear()+'</p>');



////////////////////////CORRECTION/////////////////////////





var dayNames   = new Array(); // []
dayNames[0] = 'Dimanche';
dayNames[1] = 'Lundi';
dayNames[2] = 'Mardi';
dayNames[3] = 'Mercredi';
dayNames[4] = 'Jeudi';
dayNames[5] = 'Vendredi';
dayNames[6] = 'Samedi';


var monthNames = [];
monthNames[0]  = 'Janvier';
monthNames[1]  = 'Février';
monthNames[2]  = 'Mars';
monthNames[3]  = 'Avril';
monthNames[4]  = 'Mai';
monthNames[5]  = 'Juin';
monthNames[6]  = 'Juillet';
monthNames[7]  = 'Août';
monthNames[8]  = 'Septembre';
monthNames[9]  = 'Octobre';
monthNames[10] = 'Novembre';
monthNames[11] = 'Décembre';

var today = new Date();

document.write('Nous sommes le ' + dayNames[today.getDay()] + ' ');  // dayNames[4]
document.write(today.getDate() + ' ');
document.write(monthNames[today.getMonth()] + ' ');
document.write(today.getFullYear() + '.');
