var canvas = document.getElementById("moncanevas"); 
var context = canvas.getContext('2d'); 

context.beginPath();
context.strokeStyle='green';
context.lineWidth=12;

context.moveTo(20,100);
context.lineTo(200,10);
context.lineTo(500, 300);
context.stroke();

context.beginPath();
context.strokeStyle='red';
context.lineWidth=10;
context.moveTo(500, 300);
context.lineTo(200, 300);
context.stroke(); 
 
context.beginPath();
context.strokeStyle='blue';
context.lineWidth=3; 
context.arc(200,100,50,0,2*Math.PI);
context.stroke(); 


context.beginPath();
context.strokeStyle='blue';
context.lineWidth=3;
context.fillStyle = "pink"; 
context.arc(400,150,100,0,2*Math.PI);
context.fill(); 


function onClickPosition(event) {
	
	console.log(event.clientX);//donne la position horizontalede la souris au clic
    console.log(event.clientY);//donne la position vertical de la souris au clic
    
    var offset = canvas.getBoundingClientRect();//donne la position de départ du canvas par rapport a l'origine du site
    
}


$(document).click('click', onClickPosition);

//document.addEventListener('click', onClickPosition);
