float px=9;
float py=3;
float vx=3.4;
float vy=0.6;
PImage logo;

//fonction dite CONSTRUCTEUR
void setup() {
  size(800, 800);
  logo = loadImage("Daco_159814.png");
  logo.resize(logo.width/6,logo.height/6);
}

//function dite "loop"
void draw() {
  background(10);
  //rect(px, py, 100, 100);
  image(logo,px,py);
  px += vx;
  py += vy;
  
  if(px > width - logo.width || px < 0 ){
    vx = vx * -1; // vx *= -1;
    tint(random(255),random(255),random(255));
  }
  if(py > height - logo.height || py < 0){
    vy = vy * -1;
    tint(random(255),random(255),random(255));
  }
  
}
