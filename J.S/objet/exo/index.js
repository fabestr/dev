
var Program = function() {

    this.fighter = new perso ('Barth', getRandomInteger (270,320), getRandomInteger (40,60), getRandomInteger (7,20), getRandomInteger (120,180));

    this.fighter2 = new perso('La clope',getRandomInteger (270,320), getRandomInteger (40,60), getRandomInteger (7,20), getRandomInteger (120,180));

    this.fighter.showUs();

    this.fighter2.showChallenger();
    
    
    
    $('#atq').on('click', this.onClickAttaque.bind(this));

    $('#def').on('click',this.onClickDefense.bind(this));

    $('#magie').on('click',this.onClickMagic.bind(this));

}



Program.prototype.challengerAttaque= function() {
    var attaqueAdverse = getRandomInteger(1,3);
    console.log(attaqueAdverse);
    if(attaqueAdverse == 1){
        this.fighter2.attaquer(this.fighter);
    }else if (attaqueAdverse == 2){
        this.fighter2.defendre();
    } else {
        this.fighter2.sort(this.fighter);
    }

}

Program.prototype.onClickAttaque = function(event) {
	event.preventDefault();

    this.fighter.attaquer(this.fighter2);

    this.challengerAttaque();
    
    this.fighter.showUs();
    this.fighter2.showChallenger();
}



Program.prototype.onClickDefense = function(event) {
	event.preventDefault();

    this.fighter.defendre();

    this.challengerAttaque();

    this.fighter.showUs();
    this.fighter2.showChallenger();

}


Program.prototype.onClickMagic = function(event) {
	event.preventDefault();

    this.fighter.sort(this.fighter2);

    this.challengerAttaque();
    
    this.fighter.showUs();
    this.fighter2.showChallenger();

}


