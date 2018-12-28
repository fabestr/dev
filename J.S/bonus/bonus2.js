var photo = 'WWWWWWWWWWWWBWWWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWBWWWWWWWWWWW';
var lettre = photo.charAt(0);
var nombre = 1;
var result= "";

// lettre = W
// nombre = 11
// result = 12W1B14W3B



function lre(photo) {
for(var i = 1 ; i < photo.length ; i++){
	if(lettre != photo.charAt(i)){
		result += nombre;
		result += lettre;
		lettre = photo.charAt(i)
		nombre=0;
	}

	nombre++
	
		
}

	result += nombre;
	result += lettre;
	document.write(result);
}

lre(photo);



/****************************************************************************
**********************CORRECTION*********************************************
****************************************************************************/


function LRE(s)
{
	var result = "";
	var current_char = s.charAt(0);
	var count = 1;
    
    // count = 11
    // current_char = W
    //result = 12W1B14W3B23W1B11W
    
    for(var i = 1; i < s.length ; i++)
	{
    	if ( current_char != s.charAt(i) )
		{
        	result += count;
			result += current_char;
        	current_char = s.charAt(i);
            count = 0;
        }
        
        count++;
    }
    
    result += count;
	
    result += current_char;
    
    return result;
    

}


var s = "WWWWWWWWWWWWBWWWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWBWWWWWWWWWWW";
var compressed_string = LRE(s); //12W1B14W3B23W1B11W

var r = "AAAAAAAABBBBBBBDDDDDDDDJJJJJJJJJ";
var cr = LRE(r);

document.write("<p>string d'origine : " +s+"</p>");
document.write("<p>string compressee : " + compressed_string+"</p>");


document.write("<p>string d'origine : " +r+"</p>");
document.write("<p>string compressee : " + cr+"</p>");
