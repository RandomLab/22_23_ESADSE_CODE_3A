void setup(){
  size(800,800,P2D);
}

color c = color(255,0,0);

void draw(){
  noStroke();
  bob(20,20,color(255,0,255));
  bob(200,5,color(0,0,255));
  bob(6,90,color(0,random(255),random(255)));
}


void bob(int w,int h, color alfred){
  fill(alfred);
  rect(random(width),random(height),w,h);
}
