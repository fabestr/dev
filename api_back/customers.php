<?php

header('access-control-allow-origin: *');
header('Content-Type: application/json');

$api_key = 'aze';

include 'class/Database.class.php';
$database = new Database();

if ($_GET['api_key'] == $api_key && array_key_exists('id', $_GET) == false &&array_key_exists('keyword', $_GET) == false ) {

	$sql = 'SELECT * FROM customers';


	$execute = [];

	$customers = $database->query($sql, $execute);

	
	echo json_encode($customers);
    exit();
    
} else if (array_key_exists('id', $_GET) == true && $_GET['api_key']== $api_key) {

	$sql = 'SELECT * FROM customers WHERE customerNumber=?';

	$execute = [$_GET['id']];

	$customer = $database->queryOne($sql, $execute);
    
    echo json_encode($customer);
    exit();

}  else if (array_key_exists('keyword', $_GET) == true && $_GET['api_key']== $api_key &&  array_key_exists('id', $_GET) == false) {
    //var_dump('la');
	$sql = 'SELECT * FROM customers WHERE customerName LIKE "%"?"%"';

	$execute = [$_GET['keyword']];

	$customers = $database->query($sql, $execute);
    //var_dump($customers);
    echo json_encode($customers);
    exit();
}else {

    echo 'la requete est impossible car soit vous avez indiqué un mauvais id ou pas la bonne api_key';
}



?>