<?php
include 'todolist.php';

function removeTasks(array $allTasks, array $indexes)
{
	$task = [];
    
    foreach($allTasks as $index => $value)
    {
    	if(in_array($index, $indexes) == false)
        {
        	array_push($task, $value);
        }
    
    }
    
    return $task;

}



if(empty($_POST) == false) {

	var_dump($_POST["indexes"]);
    $allTasks = incsv();
    $task = removeTasks($allTasks, $_POST['indexes']);
	saveTasks($task);
}
header('Location: addTodolist.php');
exit();








?>