'use strict';

var ValidateOrder = function() {
    this.basket = new Basket();
   this.sendToPhp();

}

ValidateOrder.prototype.sendToPhp = function() {
	var order = JSON.stringify(this.basket.items);
    
    $('#orderValidation').val(order);


}


