<?php
class Program {
    private $rectangle;
    private $carre;
    private $circle;
    private $ellipse;
    private $triangle;
    
    public function __construct(Rectangle $rectangle, Carre $carre, Circle $circle, Ellipse $ellipse, Triangle $triangle) {
    
        $this->rectangle = $rectangle;
        $this->carre = $carre;
        $this->circle = $circle;
        $this->ellipse = $ellipse;
        $this->triangle = $triangle;
    
    }

	public function drawRectangle() {
        $size = $this->rectangle->getSize(); // ['width' =>200,'height' => 100];
    	$position = $this->rectangle->getPosition();
		$style = $this->rectangle->getStyle();
    
    	return '<rect x="'.$position['x'].'" y="'.$position['y'].'" width="'.$size['width'].'" height="'.$size['height'].'" fill="'.$style['fill'].'" opacity="'.$style['opacity'].'"></rect>';
    
    }

    public function drawCarre() {

        $size = $this->carre->getSize();
        $position = $this->carre->getPosition();
        $style = $this->carre->getStyle();

        return '<rect x="'.$position['x'].'" y="'.$position['y'].'" width="'.$size['width'].'" height="'.$size['width'].'" fill="'.$style['fill'].'" opacity="'.$style['opacity'].'"></rect>';
    }

    public function drawCircle() {
        $r = $this->circle->getRayon();
        $position = $this->circle->getPosition();
        $style = $this->circle->getStyle();

        return '<circle cx="'.$position['x'].'" cy="'.$position['y'].'" r="'.$r['r'].'" fill="'.$style['fill'].'" opacity="'.$style['opacity'].'"></circle>';
    }

    public function drawEllipse(){
        $tordu = $this->ellipse->getTordu();
        $position = $this->ellipse->getPosition();
        $style = $this->ellipse->getStyle();

        return '<ellipse cx="'.$position['x'].'" cy="'.$position['y'].'" rx="'.$tordu['rx'].'" ry="'.$tordu['ry'].'"  fill="'.$style['fill'].'"opacity="'.$style['opacity'].'" />';

    }

    public function drawTriangle() {
        $points = $this->triangle->getPoints();
        $position = $this->triangle->getPosition();
        $style = $this->triangle->getStyle();

        return '<polygon points="'.$position['x'].' '.$position['y'].','.$points['x2'].' '.$points['y2'].',' .$points['x3'].' '.$points['y3'].'" fill="'.$style['fill'].'" opacity="'.$style['opacity'].'"/>';

    }

    public function drawAll() {
        $result = [];
     array_push( $result, $this->drawRectangle() );
     array_push( $result, $this->drawCarre() );
     array_push( $result, $this->drawCircle() );
     array_push( $result, $this->drawTriangle() );
     array_push( $result, $this->drawEllipse() );
     
     return $result;
  }
  



}

?>