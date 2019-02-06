'use strict';

/////////////////////////////////////////////////////////////////////////////////////////
// FONCTIONS                                                                           //
/////////////////////////////////////////////////////////////////////////////////////////




/////////////////////////////////////////////////////////////////////////////////////////
// CODE PRINCIPAL                                                                      //
/////////////////////////////////////////////////////////////////////////////////////////

if (document.location.href.indexOf('order') != -1 && document.location.href.indexOf('order/validate') == -1 && document.location.href.indexOf('order/payment') == -1) {
    console.log('JS orderForm');
    var ajax = new MealAjax();
}
 if (document.location.href.indexOf('order/validate') != -1) {
    console.log('JS Validate');
    var valid = new ValidateOrder();
} 