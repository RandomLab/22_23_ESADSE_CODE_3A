
//fonction de démarrage
void setup() {
  //dimension de la fenếtre
  size(800, 800);  
  background(60);
  frameRate(60);
}

//fonction infinie (boucle)
void draw(){
  background(30);
  /*
  fill(random(255));
  //x,y,largeur,hauteur
  rect(random(width),random(height),60,60);
  */
  strokeWeight(random(80));
  stroke(random(255),random(255),random(255));
  line(width/2,height/2,mouseX,mouseY);
  line(width/2,height/2,width-mouseX,mouseY);
  line(width/2,height/2,width-mouseX,height-mouseY);
  line(width/2,height/2,mouseX,height-mouseY);
}
