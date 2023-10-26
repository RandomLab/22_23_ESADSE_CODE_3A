class Ball{

	float px;
	float py;
	float vx;
	float vy;
	int colR;
	int colG;
	int colB;

	//un setup pour mon objet
	Ball(float x,float y){
		px=x;
		py=y;
		vx = random(-1,1);
		vy = random(-1,1);
		colR = int(random(255));
		colG = int(random(255));
		colB = int(random(255));
	}

	//une fonction d'affichage
	void aff(){
		fill(colR,colG,colB);
		rect(px,py,10,10);
		px+=vx;
		py+=vy;
		if(px<0 || px>width)vx*=-1;
		if(py<0 || py>height)vy*=-1;
	}

}
