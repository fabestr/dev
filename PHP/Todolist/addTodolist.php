<?php


include 'todolist.php';


if (empty($_POST) == false) {

    var_dump($_POST);
    
    $titre = $_POST['titre'];
    $tache = $_POST['tache'];
    $date = $_POST['date'];
    $priorite = $_POST['priorite'];

    addTask($titre, $tache, $date, $priorite);
    


}




function addTask($titre, $tache, $date, $priorite)
{
    $tab = 
    [
        $titre,
        $tache,
        $date,
        $priorite
    ];

    saveTask($tab);

}

$now= date_create();

$task = incsv();
var_dump($task);

include 'todolist.phtml';
?>