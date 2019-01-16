<?php
session_start();


include 'application/bdd_connexion.php';

$query = $pdo->prepare // requete SQL
(
    'SELECT 
    Title, Contents, FirstName, LastName, Post.Id, Category.Name
    FROM 
    Post
    INNER JOIN
    Author
    ON
    Author.Id = Post.Author_Id
    INNER JOIN
    Category
    ON
    Category.Id = Post.Category_Id'
);

$query->execute(); 

$articles = $query->fetchAll(PDO::FETCH_ASSOC);

var_dump($articles);

/*********************************Category******************************************/



$query = $pdo->prepare // requete SQL
(
    'SELECT 
    *
    FROM 
    Category'
    
);

$query->execute(); 

$categories = $query->fetchAll(PDO::FETCH_ASSOC);
var_dump($categories);


/**********************************user************************************ */

$query = $pdo->prepare // requete SQL
(
    'SELECT 
    *
    FROM 
    users'
    
);

$query->execute(); 

$users = $query->fetchAll(PDO::FETCH_ASSOC);

var_dump($users);



$template = 'admin';

include 'layout.phtml';



?>
