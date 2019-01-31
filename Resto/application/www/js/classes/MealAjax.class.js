'use strict';


var MealAjax = function (){

    $('#meal').on('change', this.request.bind(this));
    var basket=new Basket();
}


MealAjax.prototype.request = function(){

    var id = $('#meal').val();
    
    $.getJSON(getRequestUrl()+'/meal?id='+id,this.callback);
    
}

MealAjax.prototype.callback = function(response){
    //console.log(response);

    $('#showMeal img').attr('src',getWwwUrl()+'/images/meals/'+response.Photo);
    $('#showMeal p').text(response.Description);
    $('#showMeal span strong').text(response.SalePrice+'€');

}