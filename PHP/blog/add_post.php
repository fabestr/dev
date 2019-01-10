<?php
include 'application/bdd_connexion.php';

$query = $pdo->prepare // requete SQL
(
    'SELECT * FROM Author'
);

$query->execute(); 

$authors = $query->fetchAll(PDO::FETCH_ASSOC);

//var_dump($authors);








$query = $pdo->prepare // requete SQL
(
    'SELECT * FROM Category'
);

$query->execute(); 

$categories = $query->fetchAll(PDO::FETCH_ASSOC);

var_dump($categories);






if(empty($_POST)==false){

    var_dump($_POST);
    $titre = $_POST['title'];
    $contents = $_POST['contents'];
    $author = $_POST['author'];
    $category = $_POST['category'];
    
    $query = $pdo->prepare // requete SQL
(
    'INSERT INTO Post (Title, Contents, CreationDate, Author_Id, Category_Id) VALUE (?,?,NOW(),?,?)'
);

$query->execute([$titre,$contents,$author, $category]); 
header('Location: index.php');
    exit();

}





$template = 'add_post';

include 'layout.phtml';
?>