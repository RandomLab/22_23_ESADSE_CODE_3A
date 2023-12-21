import peasy.PeasyCam;
PeasyCam cam;

//parser de gcode
GCodeParse parser;

//-------------------------------------------------------------
// SETUP
//-------------------------------------------------------------
void setup(){
	size(1000,1000,P3D);
	cam = new PeasyCam(this, 400);
	cam.setMinimumDistance(50);
	cam.setMaximumDistance(5000);

	//parser de gcode
	parser = new GCodeParse(this);
	parser.add("test3.gcode");
	parser.parse();

	float cameraZ = (height/2.0) / tan(PI*60.0 / 360.0);
	perspective(PI/3.0, width/height, cameraZ/100.0, cameraZ*10.0);
}

//-------------------------------------------------------------
// DRAW
//-------------------------------------------------------------
void draw(){
	background(0);

	push();
	axis(100);
	plane(100);

	parser.draw();

	pop();
}

//-------------------------------------------------------------
// AXIS
//-------------------------------------------------------------
void axis(float size){
	strokeWeight(1);
	stroke(255,0,0);
	line(0,0,0,size,0,0);
	stroke(0,255,0);
	line(0,0,0,0,size,0);
	stroke(0,0,255);
	line(0,0,0,0,0,size);
}

void plane(float size){
	push();
	strokeWeight(1);
	noFill();
	stroke(255,150);
	rectMode(CENTER);
	rect(0, 0, size, size);
	pop();
}