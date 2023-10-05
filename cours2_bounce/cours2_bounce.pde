
float px=9;
float py=3;
float vx=3.4;
float vy=0.6;

void setup() {
  size(800, 800);
}

void draw() {
  rect(px, py, 100, 100);
  px = px + vx;
  py = py + vy;
  
  if(px > width ){
    vx = vx * -1;
  }
}
