<?php

class ChargeController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {
    	/*
    	 * Méthode appelée en cas de requête HTTP GET
    	 *
    	 * L'argument $http est un objet permettant de faire des redirections etc.
    	 * L'argument $queryFields contient l'équivalent de $_GET en PHP natif.
    	 */

		
			$http->redirectTo('/order');
		
       
		
    }

    public function httpPostMethod(Http $http, array $formFields)
    {
    	/*
    	 * Méthode appelée en cas de requête HTTP POST
    	 *
    	 * L'argument $http est un objet permettant de faire des redirections etc.
    	 * L'argument $formFields contient l'équivalent de $_POST en PHP natif.
    	 */

          /*paiement par carte*/
        $orderId = $_GET['orderId'];
        $idMeal = new OrderModel();

        $order = $idMeal->findOrder($orderId);

        $totalAmount = floatval($order['TotalAmount']) + floatval($order['TaxAmount']);

        require_once('vendor/autoload.php');


        \Stripe\Stripe::setApiKey('sk_test_PiFbcAKNjHwGqmSusqRbCRIj');
        
        
        $POST = filter_var_array($_POST, FILTER_SANITIZE_STRING);
        
        
        $first_name = $_POST['first_name'];
        $last_name = $_POST['last_name'];
        $email = $_POST['email'];
        $token = $_POST['stripeToken'];
        
        
        // create customer 
        
        $customer = \Stripe\Customer::create(array(
            "email" => $email,
            "source" => $token
        ));
        
        //payment
        
        $charge = \Stripe\Charge::create(array(
            "amount" => $totalAmount*100,//tout est en centimes
            "currency" => "eur",
            "description"=>"Commande ok",
            "customer" => $customer->id
        ));
        
        /* header('Location: success.php?tid='.$charge->id.'&product='.$charge->decription);
        exit(); */
                
                
                
               $http->redirectTo('/success?orderId='.$orderId);
        }
            
}
