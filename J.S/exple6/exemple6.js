/*var age;
var isThirtyYearsOld;
var isAdult;
var isNotCentennial;

age = 35;

isThirtyYearsOld = (age == 30); // false  == pareil
isThirtyYearsOld = (age == 35); // true

isNotCentennial  = (age != 100); // true != different

age = 100;
isNotCentennial  = (age != 100); // false
age = 18;

isAdult = (age > 18); // false
isAdult = (age >= 18); // true

isAdult = (age < 18); // false
isAdult = (age <= 18); // true


var string = "coucou";

coucou != 'bonjour';// true*/

//exemple condition


var age =parseInt(window.prompt('tapez votre age'));
var firstName = 'Tom';

/*if (age >= 18) {
	document.write('<p>Vous êtes majeur.</p>');
}

else {
	document.write('<p>Vous n\'êtes pas majeur.</p>');

}






var name = window.prompt('Name?');

if (name == 'Julien') {
	document.write('<p>Vous êtes Julien</p>');

}
else if (name =='Max') {


		document.write('<p>Vous êtes Max</p>');

} 
else if (name == 'Jean') {

	document.write('<p>Vous êtes Jean</p>');
        
} 
else {
	
    document.write('<p>Mais vous êtes qui ?</p>');

}*/


if (firstName == 'Tom' && age >= 18 ) {

	document.write('<p>Vous êtes majeur et votre nom est Tom</p>');

}

if ((firstName == 'Tom' || firstName == 'Pierre') && age > 17 ) {

		document.write('<p>Vous êtes Tom ou Pierre</p>');

}


