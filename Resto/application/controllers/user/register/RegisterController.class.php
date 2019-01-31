<?php

class RegisterController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {
    	
    }

    public function httpPostMethod(Http $http, array $formFields)
    {
        //var_dump($_POST);
        $register = new UserModel();
        $register->registerUser($_POST);
    }


}