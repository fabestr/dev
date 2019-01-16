<?php
session_start();

include 'application/bdd_connexion.php';







if(empty($_POST)==false){

    var_dump($_POST);
    $titleNew = $_POST['title'];
    $contentNew = $_POST['contents'];
    $id= $_POST['postId'];
$query = $pdo->prepare // requete SQL
(
    'UPDATE 
    Post 
    SET 
    Title = ?, Contents = ?
    WHERE Id = ?
    '
);

$query->execute([$titleNew,$contentNew,$id]); 

$article = $query->fetch(PDO::FETCH_ASSOC);
var_dump($article);
header('Location: index.php');
exit();
} else {

    if(array_key_exists('id', $_GET) == false || ctype_digit($_GET['id']) == false) {
        header('Location: admin.php');
        exit();
    }
    
    $query = $pdo->prepare // requete SQL
    (
        'SELECT 
        Title, Contents, Post.Id 
        FROM 
        Post
        WHERE Post.Id = ?'
    );
    
    $query->execute([$_GET['id']]); 
    
    $article = $query->fetch(PDO::FETCH_ASSOC);
    var_dump($article);

   
}




$template = 'edit_post';
include 'layout.phtml';







?>
