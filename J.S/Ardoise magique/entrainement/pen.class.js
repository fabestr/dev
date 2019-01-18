var Pen = function() {
    this.color = 'black';
    this.size = 1;
}

Pen.prototype.creation = function(context){
    context.strokeStyle = this.color;
    context.lineWidth = this.size;
}