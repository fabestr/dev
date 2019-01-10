'use strict'


const API_KEY = '2ee2c5b569240ea2a2a879dd9c8a822c';
const url_img = 'https://image.tmdb.org/t/p/w185_and_h278_bestv2';
    

   // 'https://api.themoviedb.org/3/movie/76341?api_key=2ee2c5b569240ea2a2a879dd9c8a822c'

	$.getJSON('https://api.themoviedb.org/3/movie/76341?api_key=2ee2c5b569240ea2a2a879dd9c8a822c', callBack);
    
    function callBack(response) {
    	
        console.log(response);
        console.log(response.id);
        console.log(response.genres[1].name); 
        //document.write('<img src="'+url_img+response.backdrop_path+'" />')  
    }

     /*
    'https://image.tmdb.org/t/p/w185_and_h278_bestv2'
    '/phszHPFVhPHhMZgo0fWTKBDQsJA.jpg'
    
        'https://image.tmdb.org/t/p/w185_and_h278_bestv2/phszHPFVhPHhMZgo0fWTKBDQsJA.jpg'*/
        
       
        
    //'https://api.themoviedb.org/3/search/movie?api_key=2ee2c5b569240ea2a2a879dd9c8a822c&query=avengers'
    
    
    //$.getJSON('https://api.themoviedb.org/3/search/movie?api_key=2ee2c5b569240ea2a2a879dd9c8a822c&query=avengers', myFunc);
    
    function myFunc(response) {
    
    	console.log(response);
    
    }

    /*******************************************/
//exercice pour API movie: FONCTION RECHERCHE.

    function mySearch(response) {
        console.log(response);
        
        $('.result').empty();
        $('.result').append('<ul>');
        for(var i = 0; i < response.results.length; i++) {
            var id = response.results[i].id;
    //le li sert pour la prochaine requete(recup id de chaque film)
            $('.result ul').append('<li id="emmanuel" data-id='+id+'>'+response.results[i].title+'</li>');
        }
    }

    function onClickSearch(event) {
        event.preventDefault();
        var query = $('input[name=movie]').val();

        $.getJSON('https://api.themoviedb.org/3/search/movie?api_key=2ee2c5b569240ea2a2a879dd9c8a822c&query='+query, mySearch);
    }


    
$('#button').on('click',onClickSearch);

/********************************************************************/
//Affichage des détails du films en cliquant dessus

function myIdOnClick(event) {
    event.preventDefault();
    var dataId = $(this).data('id');
    $.getJSON('https://api.themoviedb.org/3/movie/'+dataId+'?api_key='+API_KEY, movieDetails);
}


function movieDetails(response) {
    console.log(response);
    $('#details').empty();
    $('#details').append('<ul style="list-style: none">');
    $('#details ul').append('<li><img src="'+url_img+response.backdrop_path+'"/></li><li>'+response.title+'</li><li>'+response.release_date+'</li><li>'+response.overview+'</li>');

   for( var i = 0; i < response.production_companies.length; i++){
        var idComp = response.production_companies[i].id;
       
            
         $.getJSON('https://api.themoviedb.org/3/company/'+idComp+'?api_key='+API_KEY,displayCompany);
       

        
    }

}

function displayCompany (response){
    console.log(response);
    $('#company').empty();
    $('#company').append('<ul style="list-style: none">');
	$('#company ul').append('<li><a href="'+response.homepage+'">'+response.name+' </a></li>');
    
}

$(document).on('click','.result li',myIdOnClick);


/**********************************************************************/








