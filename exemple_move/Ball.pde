class Ball{

	float px;
	float py;
	float vx;
	float vy;
	int colR;
	int colG;
	int colB;
  boolean life=true;

	//un setup pour mon objet
	Ball(float x,float y){
		px=x;
		py=y;
		vx = -1;
		
		colR = int(random(255));
		colG = int(random(255));
		colB = int(random(255));
	}

	//une fonction d'affichage
	void aff(){
		fill(colR,colG,colB);
		rect(px,py,10,10);
		px+=vx;
		
		if(px<-100){
      life=false;
    }
	}

}
