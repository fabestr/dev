<?php

class User {


	public function addUser($post) {

        $hashPwd = $this->hashPassword($post['psw']);
    
    	$data = new Database();
        
        $data->setPdo('INSERT INTO 
								users(email, psw, firstName, lastName, age) 
							   VALUES 
							   (?, ?, ?, ?, ?)',
                               
                               [
                               	$post['email'],
                               	$hashPwd,
                               	$post['firstName'], 
								$post['lastName'], 
								$post['age'] 
                               ]
                               
                          	);
    
    
    }
    private function hashPassword($password)
    {

        $salt = '$2y$11$'.substr(bin2hex(openssl_random_pseudo_bytes(32)), 0, 22);

        return crypt($password, $salt);
    }

    private function verifyPassword($password, $hashedPassword)
	{
		return crypt($password, $hashedPassword) == $hashedPassword;
    }
    
    public function loginUser($post)
    {
       
        
        $data = new Database();

        $user = $data->queryOne('SELECT
                        *
                        FROM
                        users
                        WHERE
                        email=?', [
                            $post['email']
                        ]);

        var_dump($user);
        $error = false;
        $message = '';

        if($user == false){

            $error = true;
            $message = 'votre adresse mail n\'existe pas...';

        }else if ( $this->verifyPassword($post['psw'], $user['psw']) == true ) {

            //var_dump('connecté');
            $_SESSION['email'] = $user['email'];//$user =bdd  //$_SESSION=ce que veux
            $_SESSION['psw'] = $user['psw'];
            $_SESSION['firstName'] = $user['firstName'];
            $_SESSION['lastName'] = $user['lastName'];
            $_SESSION['age'] = $user['age'];

            var_dump($_SESSION);

            header('Location: index.php');
            exit();

        } else {

            $error = true;
            $message = "votre mot de passe est incorrect...";
        }
    }

    public function changePassword()
    {
        $data = new Database();
    }

}







?>