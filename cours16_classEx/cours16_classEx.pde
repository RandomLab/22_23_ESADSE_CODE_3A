Gaspard[] bob=new Gaspard[100];

void setup(){
  size(800,800,P2D);
	for(int i=0;i<bob.length;i++){
		bob[i] = new Gaspard(i,random(width),random(height));
	}
	bob[55].col = color(255,0,0);
	bob[55].x = width/2;
	bob[55].y = height/2;

	for(int i=56;i<56+10;i++){
		bob[i].col = color(0,0,255);
	}
	frameRate(10);
}

void draw(){
	background(0);
	for(int i=0;i<bob.length;i++){
		bob[i].display();
	}
	for(int i=0;i<bob.length;i++){
		bob[i].regard(bob);
	}
  
}
