


var perso = function (name, pv, attaque, def, magie ) {

    this.name = name;
    this.pv = pv;
    this.attaque = attaque;
    this.def = def;
    this.magie = magie;

}


perso.prototype.showUs = function () {

    $('#joueur').html('<p>Tu es: <strong>'+this.name+'</strong> avec <strong>'+this.pv+'</strong> de PV, <strong>'+this.attaque+'</strong> de pts d\'attaque, défense: <strong>'+this.def+'</strong> et magie: <strong>'+this.magie+'</strong></p>');
}



perso.prototype.showChallenger = function () {

    $('#alea').html('<p>Tu combats: <strong>'+this.name+'</strong> avec <strong>'+this.pv+'</strong> de PV, <strong>'+this.attaque+'</strong> de pts d\'attaque, défense: <strong>'+this.def+'</strong> et magie: <strong>'+this.magie+'</strong></p>');
}





perso.prototype.attaquer = function(victime) {

    var degat = this.attaque - victime.def;
    if (degat < 10) {
		
		console.log(perso.name +'ne sent plus rien....' );
		degat = 10
	}
	victime.hp -= degat

    console.log(this.name+' attaque et retire '+degat+'HP à '+victime.name);
    
}


perso.prototype.defendre = function() {
    var ratio =  Math.round(this.def * Math.random());

    console.log(this.name+' augmente sa defense de '+ ratio/2 + ' point ');
    this.def += ratio/2;

    console.log(this.name +'a une defense à :'+ this.def);
}

perso.prototype.sort = function(perso) {

	if (this.magie > 0) {
		var degats = getRandomInteger(1, this.magie);
		console.log(this.name +  ' jete un sort,il enlève '+ degats + ' hp a '+ perso.name);
		perso.pv -= degats;
		this.magie -=  degats;
		console.log(perso.name +' a  '+ perso.pv+ ' hp' );
	} else {
		console.log('Vous n avez plus de point de magie....')
	}

}


