<?php
session_start();

include 'application/hash.php';


$error = false;
$message = '';

if (!empty($_POST)) {
	var_dump($_POST);

	$pdo = new PDO('mysql:host=localhost;dbname=blog', 'root', 'troiswa');

	$pdo->exec('SET NAMES UTF8');
    
    $query = $pdo->prepare
	(
	    'SELECT * FROM users WHERE Mail= ?'
	);

	$query->execute( [ $_POST['email'] ] );
    
    $user = $query->fetch(PDO::FETCH_ASSOC);

	if( $user == false ) {

        $error = true;
        $message = 'Votre adresse mail n\'existe pas ...';

    }else if ( verifyPassword($_POST['psw'] , $user['Password']) == true) {
    	var_dump('connecté');
        
        $_SESSION['email'] = $user['Mail'];
        $_SESSION['psw'] = $user['Password'];
        $_SESSION['firstName'] = $user['FirstName'];
        $_SESSION['lastName'] = $user['LastName'];
        $_SESSION['pseudo'] = $user['Pseudo'];
        $_SESSION['role'] = $user['Role'];
        
        var_dump($_SESSION);

        header('Location: index.php');
        exit();
    
    } else {

        $error = true;
        $message = "votre mot de passe est incorrect...";
    }


}




$template = 'login';

include 'layout.phtml';
?>