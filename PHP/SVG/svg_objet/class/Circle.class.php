<?php
class Circle extends shape {
    private $r;

    public function __construct($x, $y , $r, $fill, $opacity) {

        parent::__construct($x, $y , $fill, $opacity);
        $this->r = $r;
    }

    public function getRayon(){
        return [
            'r' => $this->r
        ];
    }
}







?>