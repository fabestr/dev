<?php
function saveTask(array $tab)
{
    $file = fopen('list.csv', 'a');
    fputcsv($file, $tab);
    fclose($file);
}


function incsv()
{
    $task = [];
    $file = fopen('list.csv', 'a+');
    while(true) 
    {
        $line = fgetcsv($file);
        if ($line == false)
        {
            break;
        }

        array_push($task,$line );

    }
    fclose($file);
    return $task;

}


function saveTasks(array $task)
{
	$file = fopen('list.csv', 'w');
    
    foreach($task as $line)
	{
    	fputcsv($file, $line);
    }
    
    fclose($file);

}


?>