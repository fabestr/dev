<?php
session_start();

include 'application/bdd_connexion.php';

if(empty($_POST)==false){

    $query = $pdo->prepare // requete SQL
    (
        'INSERT INTO Author(FirstName, LastName) VALUES (?,?)'
    );
    
    $query->execute([$_POST['firstName'], $_POST['lastName']]);
    
    header('Location: admin.php');
    exit();
    }
    







?>