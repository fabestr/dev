'use strict';

/********COURS**************************
var tab = [{ name: 'Thib', job : 'dev' }, { name: 'Jo', job : 'étudiant' }, { name: 'Bernard', job : 'fonctionnaire' }];

console.log(tab);

var json = JSON.stringify(tab);//transforme les tableau en string

console.log(json);



var tab2 = JSON.parse(json);// transforme la string json en tableau

console.log(tab);

//window.localStorage.setItem('test', json);


var recup = window.localStorage.getItem('test');

console.log('recup', recup);

var recupTab = JSON.parse(recup);

console.log(recupTab[0]);

*/
var carnet =load();

showContact();

$('#add').on('click',removeHide);
$('#register').on('click', saveContact);
$(document).on('click','#contact li',showDetails);
$(document).on('click', '#details a', editDetails);

function removeHide() {
    $('#form').removeClass('hide');
}




function saveDataToDomStorage(key, value)
{
    var jsonData = JSON.stringify(value);
    
    window.localStorage.setItem(key, jsonData);
}


function loadDataFromDomStorage(key)
{
	var jsonData = window.localStorage.getItem(key);
    
    return JSON.parse(jsonData);

}







function saveContact(event) {
    event.preventDefault();
    var title = $('select[name=title]').val();
    var lastName = $('input[name=lastName]').val();
    var firstName = $('input[name=firstName]').val();
    var phone = $('input[name=phone]').val();

    var tab = {sexe:title, nom: lastName, prenom:firstName, telephone: phone };


    carnet.push(tab);
    saveDataToDomStorage('contact', carnet);
    console.log(carnet);
    $('#form').addClass('hide');
}



function load() {

    carnet = loadDataFromDomStorage('contact');
    console.log(carnet);
    
    if(carnet == null)
    {
    	carnet = []
    }
    
    return carnet;

}

function showContact(){

   

    $('#contact').append('<ul>');
    for(var i = 0; i < carnet.length ; i++){
    $('#contact ul').append('<li data-id="'+i+'"><a href="#" >'+carnet[i].sexe+carnet[i].nom+' '+carnet[i].prenom+'</a></li>');
    }
   
}


function showDetails(event){
    event.preventDefault();
    $('#details').fadeIn('fast');

    var id = $(this).data('id');
    //console.log(id);
   // console.log(carnet[id]);
    $('#details h3').html(carnet[id].sexe+' '+carnet[id].nom+' '+carnet[id].prenom);
    $('#details p').html(carnet[id].telephone);
    $('#details').data('id', id);

}


function editDetails() {
    $('#form').removeClass('hide');

    

}