<?php

/*$random = rand(min, max); // renvoi un entier aléatoire entre min et max

 array_push($tab, $value); // push une valeur $value dans un tableau $tab
 
 count($tab) // compte le nombre d'element dans un tableau comme .length en JS
 
 implode(', ', $tab); // $tab = ['a', 'b', 'c' ]  // a, b, c*/


$tab = [];


	


function lotery()
{
	$tab = [];
	while(count($tab)<6)
	{
		$random = rand(1, 49);
		if(array_key_exists($random, $tab) == true)
		{
			$random = rand(1,49);
		}else{
			array_push($tab, $random);
		}
		
	}
	return $tab;
}


$tab = lotery();



include 'loterie.phtml';




/***********CORRECTION*******************
const NUMBER_COUNT = 6;
const MIN_BOUND = 1;
const MAX_BOUND = 49;

$lotteryDraw = [];

function getLotteryDraw()
{
	$draw = [];
    $random;
    
    while( count($draw) < NUMBER_COUNT ){
    	do {
        
    
    		$random = rand(MIN_BOUND, MAX_BOUND);
        
        } while (in_array($random, $draw) == true);
        
    	array_push($draw, $random);
    
    }
    
    
    sort($draw);
    
    return $draw;

}

$lotteryDraw = getLotteryDraw();


 
 
 
 include 'index.phtml'

?>
*/












?>