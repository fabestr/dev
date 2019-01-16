<?php
session_start();

include 'application/bdd_connexion.php';

if(empty($_POST)==false){

    $query = $pdo->prepare // requete SQL
    (
        'INSERT INTO Category(Name) VALUES (?)'
    );
    
    $query->execute([$_POST['category']]); 
    
    header('Location: admin.php');
    exit();
    }
    







?>