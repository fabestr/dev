<?php
session_start();
include 'application/bdd_connexion.php';

if (array_key_exists('postId', $_GET) == true ) {
    $query = $pdo->prepare // requete SQL
    (
        'DELETE
        FROM 
        Post
        WHERE Id = ?'
    );
    
    $query->execute([$_GET['postId']]); 
    
    $articles = $query->fetch(PDO::FETCH_ASSOC);
    header('Location: admin.php');
    exit();
    

}

if (array_key_exists('catId', $_GET) == true ) {
    $query = $pdo->prepare // requete SQL
    (
        'DELETE
        FROM 
        Category
        WHERE Id = ?'
    );
    
    $query->execute([$_GET['catId']]); 
    
    $articles = $query->fetch(PDO::FETCH_ASSOC);
    header('Location: admin.php');
    exit();
}




?>