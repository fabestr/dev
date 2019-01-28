<?php
class Ellipse extends shape {

    private $rx;
    private $ry;

    public function __construct($x, $y, $rx, $ry, $fill, $opacity) {

        parent::__construct($x, $y, $fill, $opacity);
        $this->rx = $rx;
        $this->ry = $ry;
    }

    public function getTordu() {
        return [
            'rx'=>$this->rx,
            'ry'=>$this->ry
        ];
    }

}








?>