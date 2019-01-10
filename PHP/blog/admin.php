<?php

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







$template = 'admin';

include 'layout.phtml';



?>
