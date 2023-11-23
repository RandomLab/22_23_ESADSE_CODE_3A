import controlP5.*;
ControlP5 cp5;

PImage img;

void setup(){
  size(1200,900,P2D);
  img = loadImage("montagneA.jpg");
  img.resize(width,height);
  //initialisation global de la librarie
  cp5 = new ControlP5(this);
  
  cp5.addSlider("taille")
     .setPosition(20,20)
     .setRange(20,200)
     .setSize(300,20)
     .setLabel("taille en pixel")
     ;
  
  cp5.addSlider("ran_with")
     .setPosition(20,20+30)
     .setRange(0,100)
     .setSize(300,20)
     ;
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
