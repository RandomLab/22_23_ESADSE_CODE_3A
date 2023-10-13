PFont typo;
PFont typo14;
String [] hello={
  "Hello :-)","Bonjour","Hola","Guten Tag",
  "Nihao","Buongiorno","Annyeong","Привет",
  "Namasté","Tere","Ullaakkut","Hei","Godmorgen",
  "Hej","Oi","Éco vo don deye","Arvi pa"
};

void setup(){
  //size(800,800);
  fullScreen(P2D);
  typo = loadFont("CoreSansA75ExtraBold-48.vlw");
  typo14 = loadFont("CoreSansA35Light-14.vlw");
  background(0);
}

void draw(){
  fill(0,5);
  rect(0,0,width,height);
  
  fill(random(255));
  textFont(typo);
  int de = int(random(hello.length));
  float x= random(width);
  float y= random(height);
  text(hello[de],x,y);
  
  textFont(typo14);
  fill(0,random(255),random(255));
  text("x: "+int(x)+" y: "+int(y),x,y+20);
}
