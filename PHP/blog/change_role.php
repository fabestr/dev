<?php
session_start();

include 'application/bdd_connexion.php';

if (empty($_POST) == false){

   var_dump($_POST);

   $role       = $_POST['role_select'];
   $id         = $_POST['roleId'];
}
$query = $pdo->prepare
(
   'UPDATE
       `users`

   SET
       `Role`= ?

   WHERE
       Id = ?'
);

$query->execute( [$role, $id] );

header('Location: admin.php');
   exit();


   ?>