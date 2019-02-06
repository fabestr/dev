'use strict';


var Basket = function() {
    this.items = [];
    this.load();
    $('#add').on('click',this.saveOrder.bind(this));
    $(document).on('click','.delete-button',this.deleteArticle.bind(this));

}

Basket.prototype.load = function() {
    this.items = loadDataFromDomStorage('order');
    if (this.items == null) {
        this.items = [];
    }
    if (document.location.href.indexOf('order') != -1 && document.location.href.indexOf('order/validate') == -1) {

        this.showOrder();
	} else {
    
    	this.showRecapOrder();
    }
}

Basket.prototype.saveOrder = function(event){
    event.preventDefault();
    var quantity = parseInt($('#quantity').val());
    var product = $('select[name=meal] option:selected').text();
    var unitPrice =parseFloat($('#showMeal span strong').text());
    var id = $('select[name=meal] option:selected').val();
    var photo = $('#showMeal img').attr('src');

    console.log(photo);
    var order = {id:id,quantity:quantity, name:product, price:unitPrice, photo:photo};
    //console.log('order',order);

    for( var i= 0; i < this.items.length; i++){
        if(this.items[i].id == order.id){
            this.items[i].quantity += order.quantity;
            saveDataToDomStorage('order',this.items);
            this.showOrder();
            return;
        }

    }

    this.items.push(order);
    saveDataToDomStorage('order',this.items);
    //console.log(this.items);
    this.showOrder();

}





Basket.prototype.showOrder = function() {

    //console.log(dataOrder);
    $('#order-details').empty();
    
    for (var i = 0; i < this.items.length; i++){
        var tr = $('<tr>');
        tr.append('<td class="number">'+this.items[i].quantity+'</td>'); 
        tr.append('<td>'+this.items[i].name+'</td>');
        tr.append('<td class="number">'+this.items[i].price+'</td>');
        var result = this.items[i].quantity*this.items[i].price;
        tr.append('<td class="number">'+result+'</td>');
        tr.append('<td><button class="delete-button button button-cancel small" data-mealid="'+i+'" title="Supprimer l\'article"><i class="fa fa-trash"></i></button>');
        $('#order-details').append(tr);
    }
   
}

Basket.prototype.deleteArticle = function(event){

    event.preventDefault();

    var i = event.currentTarget.dataset.mealid;
    console.log(i);
    this.items.splice(i,1);
    

    saveDataToDomStorage('order',this.items);
    this.showOrder();
}


Basket.prototype.showRecapOrder = function() {

    var priceHT = 0;
	$('.meal-list tbody').empty();
     for (var i=0; i < this.items.length; i++) {
        priceHT += parseFloat(this.items[i].quantity)*parseFloat(this.items[i].price);
        
        var tr = $('<tr>');
        tr.append('<td><img src="'+this.items[i].photo+'" width="25%">'+this.items[i].name+'</td><td class="number">'+this.items[i].quantity+'</td><td class="number">'+this.items[i].price+'</td><td class="number">'+parseFloat(this.items[i].quantity)*parseFloat(this.items[i].price)+'</td>')
        $('.meal-list tbody').append(tr);
    }
    
    var tva = (priceHT*0.2).toFixed(2);
    var ttc = (parseFloat(priceHT)+parseFloat(tva)).toFixed(2);
    
    $('#totalht').text(priceHT.toFixed(2)+' €');
    $('#tva').text(tva+' €');
    $('#totalttc').text(ttc+' €');
}

