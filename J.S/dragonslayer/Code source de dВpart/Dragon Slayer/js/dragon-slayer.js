'use strict';   // Mode strict du JavaScript

/*************************************************************************************************/
/* **************************************** DONNEES JEU **************************************** */
/*************************************************************************************************/
var game = {};
var nbrtour = 0;

/*************************************************************************************************/
/* *************************************** FONCTIONS JEU *************************************** */
/*************************************************************************************************/


function initializeGame()
{
	switch(game.difficult){
		case 1:
		game.HPplayer = getRandomInteger(200,250);
		game.HPdragon = getRandomInteger(150,200);
		break;

		case 2 :
		game.HPplayer = getRandomInteger(200,250);
		game.HPdragon = getRandomInteger(200,250);
		break;

		case 3 :
		game.HPplayer = getRandomInteger(150,200);
		game.HPdragon = getRandomInteger(200,250);
		break;
	}
	switch(game.armure){
		case 1:
		game.armure = 1;
		break;

		case 2:
		game.armure = 1.25;
		break;

		case 3:
		game.armure = 2;
		break;
	}
	switch(game.arme){
		case 1:
		game.arme = 0.5;
		break;

		case 2:
		game.arme = 1;
		break;

		case 3:
		game.arme = 2;
		break;
	}
}






function DamageDragon()
{
	switch(game.difficult){
		case 1:
		var degatDragon = getRandomInteger(10,20) / game.armure ;
		break;

		case 2:
		var degatDragon = getRandomInteger(20,30) / game.armure ;
		break;

		case 3:
		var degatDragon = getRandomInteger(20,30) / game.armure ;
		break;
	}
	return Math.floor(degatDragon);
}







function DamagePlayer()
{
	switch(game.difficult){
		case 1:
		var degatPlayer = getRandomInteger(25,30) * game.arme ;
		break;

		case 2:
		var degatPlayer = getRandomInteger(15,20) * game.arme ;
		break;

		case 3:
		var degatPlayer = getRandomInteger(5,10) * game.arme ;
		break;
	}
	return Math.floor(degatPlayer);
}







function gameloop()
{
	

	do{
		var loop = getRandomInteger(1,2);
		if(loop == 1){
			console.log('Le dragon est plus rapide!');
			game.HPplayer -= DamageDragon();
		}else{
			console.log('Vous etes plus rapide!');
			game.HPdragon -=  DamagePlayer();
		}

		console.log('HP dragon : '+ game.HPdragon + 'PV HP joueur : '+ game.HPplayer+" PV");

		nbrtour++
	}while(game.HPdragon > 0 && game.HPplayer > 0);

}





function showWinner()
{
	if(game.HPplayer <= 0){
		document.write('<h1>Tu t\'es fais défoncééééééééé!!!</h1>');
		document.write('<img src="../images/dragon.jpg"');
		document.write('<p>il reste : '+ game.HPdragon + 'HP au dragon!</p>')
		
	}else{
		document.write('<h1>T\'as eu de la chance! test encore et tu verras!</h1>');
		document.write('<img src="../images/knight.jpg"');
		document.write('<p>il te reste : '+ game.HPplayer + 'HP!</p>');
	}
}


/*************************************************************************************************/
/* ************************************** CODE PRINCIPAL *************************************** */
/*************************************************************************************************/


game.difficult = requestInteger ("difficulté? \n  " +
	'facile:1 / normale:2 / difficile:3',1,3);

game.armure = requestInteger ("Armure ? \n  " +
	'Cuivre:1 / Fer:2 / Magique:3',1,3);

game.arme = requestInteger ("arme? \n  " +
	'bois:1 / Acier:2 / Excalibur:3',1,3);





function StartGame()
{

initializeGame();
console.log(game);
gameloop();
console.log('cette partie s\'est déroulée en : '+ nbrtour+ 'tours.');
showWinner();
}

StartGame();
