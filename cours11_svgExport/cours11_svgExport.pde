import processing.svg.*;

void setup() {
  size(800, 800,P2D);
  beginRecord(SVG, "record.svg");
  frameRate(10);
}

void draw() {
  background(255);
  for (int i=0; i<200; i++) {
    monDessin();
  }
  // i++;    i+=1;    i=i+1;
}

void keyPressed() {
  endRecord();
  beginRecord(SVG, "record"+frameCount+".svg");
}

void monDessin() {
  fill(random(255));
  rect(random(width), random(height), random(100), random(100));
  circle(random(width), random(height), random(40,100));
}
