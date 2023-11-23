import controlP5.*;

float largeurRect=100;
float hauteurRect=100;
ControlP5 cp5;

void setup() {
  size(800, 800);
  cp5 = new ControlP5(this);

  cp5.addSlider("sliderValue")
    .setPosition(100, 50)
    .setRange(0, 255)
    .setValue(largeurRect)
    ;

  cp5.addSlider("slider2")
    .setPosition(100, 200)
    .setRange(0, 900)
    .setValue(hauteurRect)
    ;
}

void draw() {
  background(240);
  rect(50, 50, largeurRect, hauteurRect);
}

void controlEvent(ControlEvent ev) {
  if (ev.getController().getName().equals("sliderValue")) {
    largeurRect= ev.getController().getValue();
  }
  if (ev.getController().getName().equals("slider2")) {
    hauteurRect= ev.getController().getValue();
  }
}
