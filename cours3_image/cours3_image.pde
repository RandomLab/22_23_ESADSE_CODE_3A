
PImage bob;

void setup(){
  size(800,800,P2D);
  bob = loadImage("bob.png");
}

void draw(){
  image(bob,mouseX,mouseY);

}
