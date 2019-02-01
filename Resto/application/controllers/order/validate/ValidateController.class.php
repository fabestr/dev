<?php

class ValidateController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {
       if(array_key_exists('Email', $_SESSION) == false){
        $http->redirectTo('/user/login');
       }
        
    }

    public function httpPostMethod(Http $http, array $formFields)
    {
        
        
    }
}