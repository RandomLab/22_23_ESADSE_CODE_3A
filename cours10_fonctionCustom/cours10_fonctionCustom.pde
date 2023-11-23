void setup() {
  size(800, 800, P2D);
}

void draw() {
  //bob(width/2, height/2, color(255, 0, 0),20);
  //bob(200, 200, color(255, 255, 0),40);
  //bob(width/2, 500, color(255, 0, 255),60);
  
  for(int i=0;i<width;i+=30){
    for(int j=0;j<height;j+=30){
       bob(i, j, color(i/2.5, j/2.5, (i+j)/4),j,30);
    }
  }
  
  bob(width/2,height/2,color(0),100,120);
}


void bob(float x, float y, color c,float v,int t) {
  push();
  translate(x, y);
  rectMode(CENTER);
  rotate(float(frameCount)/v);
  fill(c);
  rect(0, 0, t, 10);
  pop();
}
