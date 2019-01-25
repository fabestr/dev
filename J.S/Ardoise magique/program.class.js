var Program = function(canvas)
{

	this.pen          = new Pen();
    this.slate       = new Slate(this.pen, canvas);
	this.colorPalette = new ColorPalette();

	this.start();	
	
	
}


Program.prototype.start = function() {

	var penColor = document.querySelectorAll('.pen-color');
    
    for (var i = 0; i < penColor.length; i++) {
    
    	penColor[i].addEventListener('click', this.onClickPenColor.bind(this));
    
    }
	
	var penSize = document.querySelectorAll('.pen-size');


	for (var j = 0; j < penSize.length; j++) {

		penSize[j].addEventListener('click',this.onCLickPenSize.bind(this));

	}

	var erase = document.getElementById('erase');
	erase.addEventListener('click', this.onClickErase.bind(this));

	var paletteButton = document.getElementById('tool-color-picker');
    paletteButton.addEventListener('click', this.onClickColorPicker.bind(this));
   
   
    $(document).on('magical-slate:pick-color', this.onPickColor.bind(this));



}





Program.prototype.onPickColor = function()
{

	var color = this.colorPalette.getPickedColor();
	this.pen.color = 'rgb('+color.red+','+color.green+','+color.blue+')';
    
    
}




Program.prototype.onClickPenColor = function(event) {

	var color = event.currentTarget.dataset.color;

	this.pen.color = color;
}


Program.prototype.onCLickPenSize = function(event) {

	var size = event.currentTarget.dataset.size;
	
	this.pen.size = size;
	console.log(size);
}



Program.prototype.onClickErase = function(event) {

	this.slate.context.clearRect(0, 0, canvas.width, canvas.height);

}


Program.prototype.onClickColorPicker = function()
{
	var palette = document.getElementById('color-palette');
    
    palette.classList.toggle('hide');


}
