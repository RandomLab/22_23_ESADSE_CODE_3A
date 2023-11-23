PImage img;

void setup(){
  size(1200,900,P2D);
  img = loadImage("montagneA.jpg");
  img.resize(width,height);
}

int taille=20;
float ran_with=10;

void draw(){
  background(0);
  //image(img,0,0);
 
  for(int i=0;i<width;i+=taille){
    for(int j=0;j<height;j+=taille){
      color col = img.get(i,j);
      fill(col);
      noStroke();
      float lum=brightness(col);
      lum = map(lum,0,255,5,40);
      ellipse(i,j,lum*taille/20+random(ran_with),lum*taille/20);
      ///rect(i,j,random(30),random(50));
      strokeWeight(10);
      stroke(col);
     // line(i,j,i+taille,j+taille);
    }
  }
}
