<?php

class SuccessController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {
       
            //$http->redirectTo('/order');
        $orderId= $_GET['orderId'];
        $orderNumber = new OrderModel();
        $order = $orderNumber->findOrder($orderId);
        var_dump($order);
        $totalAmount = floatval($order['TotalAmount']) + floatval($order['TaxAmount']);

        return [
            'order'=> $order, 
            'totalAmount'=> $totalAmount
        ];
        
    }

    public function httpPostMethod(Http $http, array $formFields)
    {
        
    }
}