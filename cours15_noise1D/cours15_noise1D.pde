
void setup(){
  size(800,800,P2D);
}

float x=0;

void draw(){
  background(0);
  
  //float h1 = random(0,100);
  //rect(width/3+25,100,50,h1);
  
  noStroke();
  for(int i=0;i<width;i+=5){
    float h2=noise(x+i*0.001)*800;
    rect(i,0,5,h2);
  }
  x+=0.01;
}
