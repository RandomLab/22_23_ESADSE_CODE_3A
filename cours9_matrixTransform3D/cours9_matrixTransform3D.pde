import peasy.PeasyCam;
PeasyCam cam;
float ang=0;

void setup(){
  size(800,800,P3D);
  cam = new PeasyCam(this, 400);
}

void draw(){
  background(0);
  sphereDetail(10);
  
  pushMatrix();
  noFill();
  axe();
  stroke(255);
  box(100);
  
  rotateZ(ang);
  translate(300,0,0);
  axe();
  stroke(0,150,200);
  sphere(60);
  
  rotateZ(ang*2);
  translate(150,0,0);
  axe();
  stroke(200,0,200);
  sphereDetail(5);
  sphere(30);
  
  popMatrix();
  ang+=0.01;
}


void axe(){
  stroke(255,0,0);
  line(0,0,0,100,0,0);
  stroke(0,255,0);
  line(0,0,0,0,100,0);
  stroke(0,0,255);
  line(0,0,0,0,0,100);
}
