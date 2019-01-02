<?php

$pdo = new PDO('mysql:host=localhost;dbname=classicmodels', 'root', 'troiswa');// acces a la base de données

$pdo->exec('SET NAMES UTF8');//comme en HTML

$query = $pdo->prepare // requete SQL
(
    //'SELECT * FROM offices WHERE officeCode=3'
    'SELECT 
    	orderNumber, orderDate, shippedDate, status
    
     FROM 
     	orders'
);

$query->execute(); // Lance la requete

$orders = $query->fetchAll(PDO::FETCH_ASSOC); //Récupere et stock dans la variable
// si on fait juste 'fetch' les donneés sont rangé dans un tableau et non dans un tableau associatif comme avec 'fetchAll'



include 'boncommande.phtml';
?>
