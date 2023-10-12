
PImage bob;

void setup(){
  size(800,800,P2D);
  bob = loadImage("bob.png");
  bob.resize(bob.width/2,bob.height/2);
}

void draw(){
  imageMode(CENTER);
  image(bob,mouseX,mouseY);
  
  tint(random(140,255));
  image(bob,width-mouseX,mouseY);
  image(bob,mouseX,height-mouseY);
  image(bob,width-mouseX,height-mouseY);
  
}
