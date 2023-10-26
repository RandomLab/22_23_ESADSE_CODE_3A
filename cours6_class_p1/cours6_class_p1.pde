Ball [] b = new Ball[1000];

void setup(){
  size(800,800,P2D);
	for(int i=0;i<b.length;i++){
		b[i] = new Ball(width/2,height/2);
	}
}


void draw(){
	background(100);
	for(int i=0;i<b.length;i++){
		b[i].aff();
	}
}