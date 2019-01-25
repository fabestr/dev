'use strict';


/*************EN JQUERY*********** */
/* setTimeout(function(){ 

	$.event.trigger('coucou');


}, 3000);


 $(document).on('coucou', function() {
 
 	console.log('déclenchement du trigger');
 
 });


 $.event.trigger('coucou');
 */
 
 

/*****************EN NATIF*********************************** */

var event = document.createEvent('Event');
 
event.initEvent('coucou', true, true);


document.addEventListener('coucou', function() {

    console.log('déclenchement du trigger');

});


document.dispatchEvent(event);


setTimeout(function(){ 

document.dispatchEvent(event);


}, 3000);
