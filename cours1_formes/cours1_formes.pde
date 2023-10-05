
//fonction de démarrage
void setup() {
  //dimension de la fenếtre
  size(800, 800);  
  background(30);
  frameRate(60);
}

//fonction infinie (boucle)
void draw(){
  fill(random(255),random(255));
  //x,y,largeur,hauteur
  noStroke();
  rect(random(width),random(height),60,60);
  
  stroke(random(255));
  strokeWeight(random(255));
  
  circle(random(width),random(height),random(100));
  
  strokeWeight(2);
  stroke(255,0,0);
  line(0,0,width,height);
  
  strokeWeight(2);
  stroke(255,255,0);
  noFill();
  circle(random(width),random(height),random(100));
}
