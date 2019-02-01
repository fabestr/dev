'use strict';

var ValidateOrder = function() {
    this.basket = new Basket();
    console.log('la');
    this.basket.load();
    this.showOrderAgain();
    this.totalHT = null;

}

ValidateOrder.prototype.showOrderAgain = function(){
    $('#orderPayment').empty();
    
    for (var i = 0; i < this.basket.items.length; i++){
        var result = this.basket.items[i].quantity*this.basket.items[i].price;
        this.totalHT+=(this.basket.items[i].quantity*this.basket.items[i].price);
        var tr = $('<tr>');
        tr.append('<td>'+this.basket.items[i].Photo+' '+this.basket.items[i].name+'</td>');
        tr.append('<td class="number">'+this.basket.items[i].quantity+'</td>'); 
        tr.append('<td class="number">'+this.basket.items[i].price+'</td>');
       
        tr.append('<td class="number">'+result+'</td>');


        
        $('#orderPayment').append(tr);


    }
}