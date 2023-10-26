void setup(){
  size(800,800,P2D);
}

float ang=0;
float dist=0;

void draw(){
  dist=sin(ang)*300;
  rectMode(CENTER);
  
  pushMatrix();
  translate(width/2,height/2);
  rotate(ang);
  
  fill(255,255,0);
  rect(0,0,40,40);
  
  rotate(ang);
  translate(dist,sin(ang*1.4)*100);
  
  fill(
  map(cos(ang),-1,1,0,255)
  );
  
  rotate(ang*8.3);
  rect(0,0,40,40);
  
  translate(60,0);
  fill(
  map(cos(ang),-1,1,0,255),
  255,
  map(sin(ang),-1,1,0,255)
  );
  rotate(ang*2);
  rect(0,0,40,10);
  
  popMatrix();
  
  ang+=0.01;
}
