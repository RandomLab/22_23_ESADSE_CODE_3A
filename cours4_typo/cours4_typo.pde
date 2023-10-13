PFont typo;

String hello="Hello :-)";

void setup(){
  size(800,800);
  typo = loadFont("CoreSansA75ExtraBold-48.vlw");
  background(0);
}

void draw(){
  fill(0,5);
  rect(0,0,width,height);
  
  fill(random(255));
  textFont(typo);
  text(hello,random(width),random(height));
}
