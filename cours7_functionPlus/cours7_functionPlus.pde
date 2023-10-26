void setup(){
  size(800,800,P2D);
}

color c = color(255,0,0);

void draw(){
  noStroke();
  bob(20,20,color(random(255),0,255));
  bob(200,20,color(#6D9CC4));
  bob(20,90,color(0,random(255),random(255)));
}


void bob(int w,int h, color alfred){
  fill(alfred);
  rect(grid(width),grid(height),w,h);
}

int grid(int nbr){
  float res = random(nbr);
  res=int(res / 30)*30;
  return int(res);
}
