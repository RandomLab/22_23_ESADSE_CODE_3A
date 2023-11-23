PVector pos=new PVector(200,200);
PVector vit=new PVector(1,1);
PVector acc=new PVector(0,0);
float max=1;

void setup(){
  size(800,800,P2D);
}

void draw(){
  rect(pos.x,pos.y,50,50);
  
  pos.add(vit); //intégration de la vitesse
  vit.add(acc); //intégration de l'accélération
  vit.mult(0.9); //intégration de la friction
  
  if(right){
    acc.x+=0.5;
  }else if(left){
    acc.x-=0.5;
  }else{
    acc.x=0;
  }
  
  if(up){
    acc.y-=0.5;
  } else if(down){
    acc.y+=0.5;
  }else{
    acc.y=0;
  }
  if(acc.mag()>max)acc.setMag(max); 
  
  if(pos.x<0 || pos.x>width)vit.mult(-1);
  if(pos.y<0 || pos.y>height)vit.mult(-1);
}

boolean left=false;
boolean right=false;
boolean up=false;
boolean down=false;
void keyPressed(){
   if(keyCode==LEFT)left=true;
   if(keyCode==RIGHT)right=true;
   if(keyCode==UP)up=true;
   if(keyCode==DOWN)down=true;
}
void keyReleased(){
   if(keyCode==LEFT)left=false;
   if(keyCode==RIGHT)right=false;
   if(keyCode==UP)up=false;
   if(keyCode==DOWN)down=false;
}
