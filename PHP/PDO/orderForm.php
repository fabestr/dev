<?php

//var_dump($_GET['orderNumber']);
$pdo = new PDO('mysql:host=localhost;dbname=classicmodels', 'root', 'troiswa');// acces a la base de données

$pdo->exec('SET NAMES UTF8');//comme en HTML

$query = $pdo->prepare // requete SQL
(

    'SELECT 
        customerName, contactLastName, contactFirstName, addressLine1, addressLine2, city, orderNumber
    FROM 
        customers
    INNER JOIN 
        orders
    ON 
        orders.customerNumber = customers.customerNumber
    WHERE
        orderNumber=?'
);

$query->execute([$_GET['orderNumber']]); // Lance la requete

$customer = $query->fetch(PDO::FETCH_ASSOC);

//var_dump($customer);

/***********************************************************/

$query = $pdo->prepare // requete SQL
(

    'SELECT 
        productName, priceEach, quantityOrdered, (priceEach * quantityOrdered) AS prixTotal
    FROM 
        products
    INNER JOIN 
        orderdetails
    ON 
        orderdetails.productCode = products.productCode
    WHERE 
        orderNumber=?'
);

$query->execute([$_GET['orderNumber']]); // Lance la requete

$product = $query->fetchAll(PDO::FETCH_ASSOC);


//var_dump($product);


$query = $pdo->prepare // requete SQL
(

    'SELECT 
        SUM(priceEach * quantityOrdered) AS totalHT
    FROM 
        orderdetails
    WHERE 
        orderNumber=?
    GROUP BY orderNumber=?'
);

$query->execute([$_GET['orderNumber'],$_GET['orderNumber']]); // Lance la requete

$total = $query->fetch(PDO::FETCH_ASSOC);

//var_dump($total);




include 'orderForm.phtml';
?>