
//fonction de démarrage
void setup() {
  //dimension de la fenếtre
  size(800, 800);  
  background(30);
  frameRate(60);
}

//fonction infinie (boucle)
void draw(){
  
  //condition
  if(mousePressed==true){
    fill(0,random(100,255),random(30,80));
    rectMode(CENTER);
    rect(mouseX,mouseY,random(100),30);
  }else{
    fill(random(100,255));
    ellipse(mouseX,mouseY,20,20);
  }
  
}
