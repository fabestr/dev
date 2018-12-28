/*for(var i = 0; i < 50; i++) {

	document.write('<p>Je suis un flemmard</p>');

}

for(var i = 0; i < 200; i++) {

	document.write('<p>Je suis un flemmard</p>');

}*/


//method FOR

var tab = ['chien', 'chat', 'poisson', 'hamster', 'cochon d\'inde', 'rat', 'ragondin'];

console.log(tab.length); // 7


for(var i = 0; i < tab.length; i++) {

	document.write('<p>'+tab[i]+'</p>');

}


// methode WHILE

var i = 0;

while (i < tab.length) {
	
    document.write('<p><stong>'+tab[i]+'</strong></p>');
	i+=2;// c'est pour aggrémenter de tous les 2!

}



for (var i = 30; i >= 0; i--) {
	document.write('<p>'+i+'</p>');

}