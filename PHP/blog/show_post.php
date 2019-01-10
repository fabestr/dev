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
    Author.Id = Post.Author_Id
    WHERE Post.Id = ?'
);

$query->execute([$_GET['id']]); 

$articles = $query->fetch(PDO::FETCH_ASSOC);





if(empty($_POST)==false){

    var_dump($_POST);
    $pseudo = $_POST['pseudo'];
    $comment = $_POST['comments'];
    
    
    $query = $pdo->prepare // requete SQL
(
    'INSERT INTO Comment (Pseudo, Contents, CreationDate, Post_Id) VALUE (?,?,NOW(),?)'
);

$query->execute([$pseudo,$comment, $_GET['id']]); 
header('Location: show_post.php?id='.$_GET['id']);
exit();

}


$query = $pdo->prepare // requete SQL
(
    'SELECT 
    *
    FROM 
    Comment
    WHERE Post_Id = ?'
    
);

$query->execute([$_GET['id']]); 

$comments = $query->fetchAll(PDO::FETCH_ASSOC);


var_dump($comments);




$template = 'show_post';

include 'layout.phtml';

?>