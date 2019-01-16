
var Program = function() {

    this.fighter = new perso ('Barth', getRandomInteger (270,320), getRandomInteger (40,60), getRandomInteger (7,20), getRandomInteger (120,180));

    this.fighter2 = new perso('La clope',getRandomInteger (270,320), getRandomInteger (40,60), getRandomInteger (7,20), getRandomInteger (120,180));
    
    
    $('#atq').on('click', this.onClickAttaque.bind(this));

}


Program.prototype.onClickAttaque = function(event) {
	event.preventDefault();

	console.log(this);

}





