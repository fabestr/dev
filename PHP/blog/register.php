<?php
session_start();

include 'application/hash.php';

if(empty($_POST) ==false) {
	
	var_dump($_POST);
	
	$hashPassword = hashPassword($_POST['psw']);

    $pdo = new PDO('mysql:host=localhost;dbname=blog', 'root', 'troiswa');

	$pdo->exec('SET NAMES UTF8');
    
    	$query = $pdo->prepare
	(
	    'INSERT INTO users(Mail, Password, FirstName, LastName, Pseudo, Role) VALUES (?, ?, ?, ?, ?, "user")'
	);

	$query->execute( [ $_POST['email'], $hashPassword, $_POST['firstName'], $_POST['lastName'], $_POST['pseudo'] ] );

}




$template = 'register';

include 'layout.phtml';

?>