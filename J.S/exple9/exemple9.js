
/************FUNCTION********************
****************************************/


function sayHello()
{
	document.write('<p>Bonjour à toutes et à tous !</p>');
	document.write('<p>Coucou</p>');

}


sayHello();
sayHello();
sayHello();
sayHello();


for(i=0; i < 5;i++)
{
	sayHello();
}


function sayHelloByName(firstName, lastName)
{
    document.write('<p>Bonjour ' + firstName + ' ' + lastName + ' !</p>');
}

sayHelloByName('Marie', 'MAYERS');


sayHelloByName('Emmanuel', '<strong>Jacob</strong>');


var firstName = window.prompt('firstName ?');

var lastName = window.prompt('laststName ?');

sayHelloByName(firstName,lastName);




/****************RETURN***********************
*********************************************/
// sert a renvoyé une valeur que l'on stock dans une variable
function sayHello1()
{
    return 'Bonjour à toutes et à tous !';
}

var message = sayHello1();
document.write('<h2>' + message + '</h2>');


function addition(num1, num2) 
{
	var result = num1 + num2;
	return result;
}

var test = addition(3,5); //8


/*****************************************/


var tab = ["canard", 'chien','chat'];
console.log(tab);

tab.push('souris');
console.log(tab);

tab.push('oie');
console.log(tab);


tab.indexOf('chien'); // 1
console.log(tab);

tab.indexOf('poule'); // -1
console.log(tab);


tab.splice(2,1); // supprime chat le premier chiffre pour lindex / 
//le second pour le nombre d'element a supprimé a partir de cet index
console.log(tab);
