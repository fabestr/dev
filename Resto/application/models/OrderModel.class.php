<?php


class OrderModel
{   

    public function findOrder($orderId){
        $data = new Database();
        $order = $data->queryOne(
            'SELECT*
            FROM
            `Order`
            WHERE
            Id = ?',
            [$orderId]
        );
        return $order;
    }

	public function validate($userId, array $orders)
    {
    	$database = new Database();
        
        $orderId = $database->executeSql
        (
            'INSERT INTO `Order`
			(
				User_Id,
				CreationTimestamp,
				TaxRate,
                Status
			) VALUES (?, NOW(), 20.0, "not payed")',
            [ $userId ]
        );


		$sql = 'INSERT INTO OrderLine
        (
            Order_Id,
            Meal_Id,
            QuantityOrderer,
            PriceEach
        ) VALUES (?, ?, ?, ?)';
        
        
        $totalAmount = 0;
        
        foreach($orders as $order) {
        
        	$totalAmount += intval($order->quantity) * floatval($order->safeSalePrice);
            
        	 $database->executeSql
             (
            	$sql,
            	[
                	$orderId,
                    $order->id,
                    $order->quantity,
                    $order->safeSalePrice
                ]
            );
        
        }
        
        $sql = 'UPDATE `Order`
				SET CompleteTimestamp = NOW(),
					TotalAmount       = ?,
					TaxAmount         = ?
				WHERE Id = ?';
        
        $taxAmount = $totalAmount * 0.2;
        

		$database->executeSql
        (
            $sql,
            [
                $totalAmount,
                $taxAmount,
                $orderId
            ]
        );

        return $orderId;

    }


}