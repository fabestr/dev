<?php

if(!empty($_POST)) {
	
    var_dump($_POST);

    $pdo = new PDO('mysql:host=localhost;dbname=session', 'root', 'troiswa');

	$pdo->exec('SET NAMES UTF8');
    
    		$query = $pdo->prepare
	(
	    'INSERT INTO users(email, psw, firstName, lastName, age) VALUES (?, ?, ?, ?, ?)'
	);

	$query->execute( [ $_POST['email'], $_POST['psw'], $_POST['firstName'], $_POST['lastName'], $_POST['age'] ] );


	$query->execute();
}

include 'header.phtml';
include 'register.phtml';
include 'footer.phtml';

?>



