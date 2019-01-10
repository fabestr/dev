<?php
include 'application/bdd_connexion.php';

$query = $pdo->prepare // requete SQL
(
    'DELETE
    FROM 
    Post
    WHERE Id = ?'
);

$query->execute([$_GET['id']]); 

$articles = $query->fetch(PDO::FETCH_ASSOC);
header('Location: admin.php');
exit();





$template = 'remove';
include 'layout.phtml';
?>