
PImage [] bob = new PImage[4];

void setup(){
  size(800,800,P2D);
  bob[0] = loadImage("bob.png");
  bob[0].resize(bob[0].width/2,bob[0].height/2);
  bob[1] = loadImage("patrick.png");
  bob[1].resize(bob[1].width/4,bob[1].height/4);
  bob[2] = loadImage("sandy.png");
  bob[2].resize(bob[2].width/24,bob[2].height/24);
  bob[3] = loadImage("carlo.png");
  bob[3].resize(bob[3].width/4,bob[3].height/4);
}

void draw(){
  imageMode(CENTER);
  image(bob[0],mouseX,mouseY);
  
  tint(random(140,255));
  image(bob[1],width-mouseX,mouseY);
  image(bob[2],mouseX,height-mouseY);
  image(bob[3],width-mouseX,height-mouseY);
  
}
