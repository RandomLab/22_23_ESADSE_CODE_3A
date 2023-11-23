class Gaspard{
  
	float x;
  float y;
	color col = color(255);
	int id;
	
  Gaspard(int id,float _x,float _y){
		this.id=id;
		x=_x;
		y=_y;
  }
  
	void display(){
		fill(col);
		ellipse(x,y,10,10);
		x+=random(-5,5);
		y+=random(-5,5);
		text(id,x+10,y);
	}

	void regard(Gaspard[] tabGaspard){
		for(int i=0;i<tabGaspard.length;i++){
			if(tabGaspard[i].id!=id){
				float d = dist(x,y,tabGaspard[i].x,tabGaspard[i].y);
				if(d<100){
					stroke(255,0,0);
					line(x,y,tabGaspard[i].x,tabGaspard[i].y);
				}
			}
		}
	}
}
