<?php
include 'class/shape.class.php';
include 'class/Rectangle.class.php';
include 'class/Carre.class.php';
include 'class/Circle.class.php';
include 'class/Ellipse.class.php';
include 'class/Triangle.class.php';
include 'class/Program.class.php';

$rectangle = new Rectangle('50', '20', '200', '100', 'firebrick', '1');
$carre = new Carre('350', '200', '80', 'blue', '0.8');
$circle = new Circle('250', '250', '160', 'yellow', '0.6' );
$ellipse = new Ellipse('500', '200','45', '100', 'green', '0.7');
$triangle = new Triangle('55', '100', '55', '250', '160', '250', 'purple', '0.7');
$prog = new Program($rectangle,$carre, $circle, $ellipse, $triangle);

/* $rec = $prog->drawRectangle();
var_dump($rec);

$car = $prog->drawCarre();
var_dump($car);

$rond = $prog->drawCircle();
var_dump($rond);

$oval = $prog->drawEllipse();
var_dump($oval);

$tri = $prog->drawTriangle();
var_dump($tri); */


$results = $prog->drawAll();
var_dump($results);


include 'svg.phtml';
?>