
void setup(){
  size(800,800,P2D);
}

float x=0;
float y=0;


void draw(){
  background(0);
  float pas=0.0005;
  
  noStroke();
  for(int i=0;i<width;i+=5){
    for(int j=0;j<height;j+=5){
      float col=noise(x+i*pas,y+j*pas)*255;
      fill(col);
      rect(i,j,5,5);
    }
  }
  x+=0.01;
  y+=0.01;
}
