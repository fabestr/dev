<?php
session_start();

include 'application/bdd_connexion.php';



if(empty($_POST)==false){
    var_dump($_POST);
$query = $pdo->prepare // requete SQL
(
    'UPDATE 
    Category 
    SET 
    Name = ?
    WHERE Id = ?
    '
);

$query->execute([$_POST['category'],$_GET['id']]); 

header('Location: admin.php');
exit();
} 







?>
