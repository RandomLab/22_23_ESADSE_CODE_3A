ArrayList<Ball> balls = new ArrayList<Ball>();


void setup(){
  size(800,800,P2D);
}


void draw(){
	background(100);
	for(int i=0;i<balls.size();i++){
		balls.get(i).aff();
	}


  if(frameCount%30==0){
    balls.add(
      new Ball(width/2,height/2)
    );
  }
  
  println("taille de mon tableau de ball : "+balls.size());
  
  for(int i=0;i<balls.size();i++){
    if(balls.get(i).life==false){
      balls.remove(i);
    }
  }
}
