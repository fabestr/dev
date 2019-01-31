<?php

class LoginController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {
        
        
    }

    public function httpPostMethod(Http $http, array $formFields)
    {
        
        $login = new UserModel();
        $login->loginUser($_POST);
        $http->redirectTo('/');
    }
}