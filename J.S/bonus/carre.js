var carre = document.getElementById('carre');
var pixel = 10;
var epileptique;

console.log(carre);

function bas()
{
	pixel+=10;
	carre.style.top = pixel+'px';
}


function haut()
{
	pixel-=10;
	carre.style.top = pixel+'px';
	randomColor();

}


function droite()
{
	pixel+=10;
	carre.style.left = pixel+'px';

}


function gauche()
{
	pixel-=10;
	carre.style.left = pixel+'px';

}

function randomColor()
{
	carre.style.backgroundColor = '#'+(Math.random()*0xFFFFFF<<0).toString(16);
}



function fleche(event)
{
	console.log(event.keyCode);
	if(event.keyCode == 40)
	{
		bas();
		randomColor();
	}else if(event.keyCode == 38)
	{
		haut();
		randomColor();
	}else if(event.keyCode == 39)
	{
		droite();
		randomColor();
	}else if(event.keyCode == 37)
	{
		gauche();
		randomColor();
	}else if(event.keyCode == 103)
	{
		gauche();
		haut();
		randomColor();
	}else if(event.keyCode == 97)
	{
		gauche();
		bas();
		randomColor();
	}else if(event.keyCode == 99)
	{
		droite();
		bas();
		randomColor();
	}else if(event.keyCode == 105)
	{
		droite();
		haut();
		randomColor();
	}else if(event.keyCode == 13)
	{
		randomColor();
	}
}

epileptique = window.setInterval(randomColor,0.0001);
randomColor();
console.log(randomColor);

document.addEventListener('keydown', fleche);