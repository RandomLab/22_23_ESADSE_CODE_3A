PGraphics bob;

void setup() {
  size(800, 800, P2D);

  bob = createGraphics(800, 800, P2D);
  bob.beginDraw();
  bob.clear();
  bob.ellipse(100, 100, 50, 200);
  bob.endDraw();
}

float t=0;

void draw() {
  background(0);
  pushMatrix();
  translate(width/2,height/2);
  rotate(t);
  rect(0,0,500,20);
  popMatrix();
  
  noTint();
  image(bob, 0, 0);

  tint(0,255,0,200);
  image(bob, 40, 40,400,400);

  bob.beginDraw();
  bob.rect(mouseX, mouseY, 50, 50);
  bob.endDraw();
  
  t+=0.01;
}
