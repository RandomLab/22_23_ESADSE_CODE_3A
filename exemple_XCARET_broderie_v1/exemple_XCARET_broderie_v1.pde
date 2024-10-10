
Zone zone1;
Zone zone2;
Zone zone3;

void setup(){
   //size(800,800);
   fullScreen(P2D);
   zone1 = new Zone(0,0,400,400);
   zone1.freq = 4;
   zone1.setInc(26,30);
   zone1.taille = 20;
   
   zone2 = new Zone(0,200,500,500);
   zone2.freq = 2;
   zone2.taille = 12;
   zone2.setInc(20,26);
   
   zone3 = new Zone(200,100,100,500);
   zone3.freq = 1;
   zone3.taille = 8;
   zone3.setInc(10,10);
   
}


void draw(){
  background(20);
  zone1.draw();
  zone2.draw();
  zone3.draw();

}
