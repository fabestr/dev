<?php
include 'application/bdd_connexion.php';


$query = $pdo->prepare // requete SQL
(
    'SELECT 
    Title, Contents, CreationDate, FirstName, LastName, Post.Id 
    FROM 
    Post
    INNER JOIN
    Author
    ON
    Author.Id = Post.Author_Id '
);

$query->execute(); 

$posts = $query->fetchAll(PDO::FETCH_ASSOC);

var_dump($posts);

$template = 'index';

include 'layout.phtml';


?>
