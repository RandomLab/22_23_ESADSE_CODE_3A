class Zone {

  PGraphics pg;
  int x, y, w, h;
  int px, py;
  int incX=10;
  int incY=10;
  color col;
  int freq=60;
  int taille=10;

  Zone(int x, int y, int w, int h) {
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    pg = createGraphics(w, h);
    pg.beginDraw();
    pg.clear();
    pg.endDraw();
    col = color(random(255), random(255), random(255));
  }

  void draw() {
    image(pg, x, y);
    if (frameCount%freq==0) {
      refresh();
    }
  }
  
  void setInc(int incX,int incY){
    this.incX=incX;
    this.incY=incY;
  }

  void refresh() {
    pg.beginDraw();
    pg.translate(px, py);
    pg.rotate(PI/4);
    pg.noFill();
    pg.stroke(col);
    pg.strokeWeight(2);
    pg.rectMode(CENTER);
    pg.rect(0, 0, taille, taille);
    pg.endDraw();

    px+=incX;
    if (px>w) {
      px=0;
      py+=incY;
    }
    if (py>h) {
      px=0;
      py=0;
      efface();
      col = color(random(255), random(255), random(255));
    }
  }

  void efface() {
    pg.beginDraw();
    pg.clear();
    pg.endDraw();
  }
}
