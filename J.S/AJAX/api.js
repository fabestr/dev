'use strict ';

var img = 'http://image.tmdb.org/t/p/w154/1SMrpPvH8TzJb6ou91cqymrdDNQ.jpg'


function displayMovieWithId(id) {
$.ajax({
    url: "https://api.internationalshowtimes.com/v4/movies/"+id,
    type: "GET",
    dataType: "json",
    data: {
        "countries": "FR",
    },
    headers: {
        "X-API-Key": "nce8u3Rq5yNq0jL9FjpmxZ8jWCzv9xvw",
    },
})
.done(displayOnMovie)
.fail(function(error) {
    console.log("HTTP Request Failed");
})
}


function displayOnMovie(response){
    console.log("HTTP Request Succeeded! ");
    console.log(response);
    $('header h1').append(response.movie.title);
    $('#img').append('<img src="'+img+'"/>');
    $('#details').append('<ul>');
   if(response.movie.release_dates.FR != undefined) {
    
        $('#details ul').append('<li><h2>Date: '+dateUsToFrench(response.movie.release_dates.FR[0].date)+'</h2></li>');
        
    } else if (response.movie.release_dates.US != undefined) {
    
        $('#details ul').append(dateUsToFrench('<li><h2>Date: '+response.movie.release_dates.US[0].date+'</h2></li>'));
        
    }
    
    $('#details').append('<li>De: '+response.movie.crew[0].name+'</li>');
    $('#details').append('<li class="cast">Avec: ');
    for (var i = 0; i < 5; i++){
        $('#details .cast').append(response.movie.cast[i].name+', ');
    }
    $('#details').append('<li class="genre">Genre: ');
    console.log('ca marche?');
    for (var i = 0; i < response.movie.genres.length; i++){
        $('#details .genre').append(response.movie.genres[i].name+', ');
    }
    $('#details').append('<li> Distribution: </li><br>');
    $('#details').append('<li><h2>Synopsis</h2></li>');
    $('#details').append('<li>'+response.movie.synopsis+'</li>');
    var videoYoutube = response.movie.trailers[0].trailer_files[0].url.split('=');
    $('#video').append('<iframe width="100%" height="350" src="https://www.youtube.com/embed/'+videoYoutube[1]+'" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>');

}










function requestShowTimesInFrance(movieId, location, date) {
	$.ajax({
        //url: "https://api.internationalshowtimes.com/v4/showtimes?movie_id=46793&countries=FR&location=48.89,2.35&time_to=2018-12-31",

    url: "https://api.internationalshowtimes.com/v4/showtimes?movie_id="+movieId+"&countries=FR&location="+location+"&time_to="+date+"&distance=50",
    type: "GET",
    data: {
        "countries": "FR",
    },
    headers: {
        "X-API-Key": "nce8u3Rq5yNq0jL9FjpmxZ8jWCzv9xvw",
    },
    })
    .done( displayShowTimes )
    .fail(function(error) {
      console.log(error);
    });
}



function displayShowTimes(response) {

	console.log(response);
    
    var showtimes = [];
    
    
    for(var i = 0; i < response.showtimes.length; i++) {
    	var seance = splitSeance(response.showtimes[i].start_at);
    	
       	var test = true;
        for (var j = 0; j < showtimes.length; j ++) {
            
            if (showtimes[j].cineId == response.showtimes[i].cinema_id) {
                
                    showtimes[j].show.time.push(seance.hour);
                    showtimes[j].show.url.push(response.showtimes[i].booking_link);
                    test = false;
                
                }
            }
            
            if (test == true) {
                showtimes.push({
                cineId :  response.showtimes[i].cinema_id,
                show : {
                      		time : [seance.hour],
                     		 url : [response.showtimes[i].booking_link]
                   	   } 
                });
            }
    
    }
    
    console.log('nouveau tab', showtimes);
    buildTableWithShow(showtimes);
}



function buildTableWithShow(showtimes) {

	var table = $('<table>');
    
    table.append('<tr><td>cinema</td><td>horaire des scéance d\'aujourd\'hui</td></tr>');
    
	for (var k = 0; k < showtimes.length; k++) {
    
    	var tr = $('<tr>');
        tr.append('<td id="'+showtimes[k].cineId+'">'+showtimes[k].cineId+'</td>');
        
        var td = $('<td>');
        
        for(var l = 0; l < showtimes[k].show.time.length; l++) {
         
            td.append('<a href="'+showtimes[k].show.url[l]+'">'+showtimes[k].show.time[l]+'</a> ')
        
        }
        
        tr.append(td);

        table.append(tr);
    
    }

    $('#sceance').html(table);
    
    for(var m = 0; m < showtimes.length; m ++) {
    
    	getCineWithId(showtimes[m].cineId);

    
    }

}


function getCineWithId(cineId) {
	jQuery.ajax({
    url: "https://api.internationalshowtimes.com/v4/cinemas/"+cineId,
    type: "GET",
    data: {
        "countries": "FR",
    },
    headers: {
        "X-API-Key": "nce8u3Rq5yNq0jL9FjpmxZ8jWCzv9xvw",
    },
    })
    .done(function(response) {
    
        console.log('place',response);
        

        
        $('#'+response.cinema.id).html('<h3>'+response.cinema.name+'</h3> <p>'+response.cinema.location.address.display_text+'</p>');


    })
    .fail(function(jqXHR, textStatus, errorThrown) {
        console.log("HTTP Request Failed");
    })



}

