/*function test() {

	console.log('hello')
}

test();

var repeat = window.setInterval(test, 1000); // repete la fonction test toutes les secondes

window.clearInterval(repeat) // arrête le setInterval*/


/*
var rouge = document.getElementById('fill');
var barre = document.getElementById('bar');

var progr = window.setInterval(charging, 1000);


rouge.style.width = '0px';


function charging()
{

	//for(var i = 0; i < '500px' ; i++)
	{
		if(i < '500px')
		barre.style.width++;
	}

}

*/

/*************************************************************************************
****************************CORRECTION************************************************
*************************************************************************************/


var fill = document.getElementById("fill");
var percent = document.getElementById("percent");
var size = 0;
var timer;

function interval()
{
	size += 2;
    fill.style.width=size+"%";
	percent.textContent = size+"%";
    
    if(size >= 100) {
    
    	window.clearInterval(timer);
  
    }
}


timer = window.setInterval(interval,50)
