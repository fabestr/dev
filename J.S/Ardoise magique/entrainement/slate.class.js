var Slate = function(canvas) {
    this.canvas = canvas;
    this.context = this.canvas.getContext('2d');
    this.currentPosition = null;
    this.drawing = false;

    this.pen = new Pen();

    this.canvas.addEventListener('mousedown',this.onMouseDown.bind(this));
    this.canvas.addEventListener('mouseup', this.onMouseUp.bind(this));
    this.canvas.addEventListener('mousemove',this.onMouseMove.bind(this));
    this.canvas.addEventListener('mouseleave',this.onMouseUp.bind(this));

}



Slate.prototype.onMouseDown = function(event){
    //console.log('coucou down');
    
    this.currentPosition = this.getMousePosition(event);
    this.drawing = true;
}


Slate.prototype.onMouseUp = function(event){
    //console.log('coucou up');

    this.drawing = false;
}




Slate.prototype.getMousePosition = function(event) {
    var offset = canvas.getBoundingClientRect();
    var position = {x:event.clientX - offset.left, y:event.clientY - offset.top};
    console.log(position);
    return position;
}


Slate.prototype.onMouseMove = function(event){
var location = this.getMousePosition(event)
if(this.drawing == true) {

    this.context.beginPath();
    this.context.moveTo(this.currentPosition.x,this.currentPosition.y);
    this.context.lineTo(location.x, location.y);
    this.context.stroke();
    this.currentPosition = location;
}
 
}