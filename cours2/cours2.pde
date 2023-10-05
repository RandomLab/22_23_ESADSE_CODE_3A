
//fonction de démarrage
void setup() {
  //dimension de la fenếtre
  size(800, 800);
  background(30);
  frameRate(120);
}

//fonction infinie (boucle)
void draw() {
  if (frameCount<100) {
    rectMode(CENTER);
    fill(random(255));
    noStroke();
    rect(width/2, height/2, random(width*0.9), random(height*0.7));

    strokeWeight(random(2, 20));
    stroke(random(255));

    fill(random(255), 0, 0);
    circle(width/2, height/2, random(width/4));
  }
}

//quand j'appuie sur une touche
void keyPressed() {
  if (key=='s') {
    save("image"+frameCount+".png");
  }
}
