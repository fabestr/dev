<?php
class UserModel
{
    public function registerUser($post){

        $hashPwd = $this->hashPassword($post['password']);
        $dataUser = new Database();
        $user = $dataUser->executeSql(
                                    'INSERT INTO User(FirstName, LastName, Email, Password, BirthDate, Address, City, ZipCode, Phone,CreationTimestamp) 
                                    VALUES 
                                    (?,?,?,?,?,?,?,?,?,NOW())',
                                    [
                                        $post['firstName'],
                                        $post['lastName'],
                                        $post['email'],
                                        $hashPwd,
                                        $post['birthYear'].'-'.$post['birthMonth'].'-'.$post['birthDay'],
                                        $post['address'],
                                        $post['ville'],
                                        $post['zipCode'],
                                        $post['phone']
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



    public function loginUser($post){

        $data = new Database();
        
        $user = $data->queryOne(
                                'SELECT
                                *
                                FROM
                                User
                                WHERE
                                Email = ?'
                               ,
                                [
                                    $post['email']
                            
                                ]
                                );

        
        $error = false;
        $message = '';

        if($user == false){

            $error = true;
            $message = 'votre adresse mail n\'existe pas...';

        }else if ( $this->verifyPassword($post['password'], $user['Password']) == true ) {

            var_dump('connecté');
            $_SESSION['Email'] = $user['Email'];//$user =bdd  //$_SESSION=ce que veux
            $_SESSION['Password'] = $user['Password'];
            $_SESSION['FirstName'] = $user['FirstName'];
            $_SESSION['LastName'] = $user['LastName'];
            $_SESSION['BirthDate'] = $user['BirthDate'];
            $_SESSION['Address'] = $user['Address'];
            $_SESSION['City'] = $user['City'];
            $_SESSION['ZipCode'] = $user['ZipCode'];
            $_SESSION['Phone'] = $user['Phone'];

            

            //header('Location: index.php');
            //exit();

        } else {

            $error = true;
            $message = "votre mot de passe est incorrect...";
        }
    }
}










?>