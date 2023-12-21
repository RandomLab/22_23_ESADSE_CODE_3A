class GCodeParse{
	
	PApplet pa;
	ArrayList<Point> points = new ArrayList<Point>();
	String [] commands;
	int id=0;
	int g=0;
	float x=0;
	float y=0;
	float z=0;
	float f=0;

	GCodeParse(PApplet pa){
		this.pa = pa;
	}

	void add(String path){
		commands = loadStrings(path);
		println(commands);
	}
	
	void clear(){
		id=0;
		points.clear();
	}

	//-------------------------------------------------------------
	// parse
	//-------------------------------------------------------------
	void parse(){
		id = 0;
		//Point p = new Point(id,0,0,0,0,100);
		//points.add(p);

		for(int i = 0; i < commands.length-1; i++){
			String [] command = split(removeMultipleSpaceInString(commands[i]), " ");

			print("ID > "+id+" > ");
			print(command);
			println(" > "+command.length);

			for(int j = 0; j < command.length; j++){
				
				if(command[j].charAt(0) == 'G' && command[j].length() > 1){
					g = int(command[j].substring(1));
				}
				if(command[j].charAt(0) == 'X' && command[j].length() > 1){
					x = float(command[j].substring(1));
				}
				if(command[j].charAt(0) == 'Y' && command[j].length() > 1){
					y = float(command[j].substring(1));
				}
				if(command[j].charAt(0) == 'Z' && command[j].length() > 1){
					z = float(command[j].substring(1));
				}
				if(command[j].charAt(0) == 'F' && command[j].length() > 1){
					f = float(command[j].substring(1));
				}
			}

			points.add(new Point(id,g,x,y,z,f));
			id++;
		}
	}

	//-------------------------------------------------------------
	// draw
	//-------------------------------------------------------------
	Point lastPoint;
	
	void draw(){
		for(int i = 0; i < points.size(); i++){
			Point p = points.get(i);
			if(p.g == 0){
				stroke(255,0,0);
			}
			if(p.g == 1){
				stroke(255);
			}

      if(p.z>0){
        stroke(255,255,0,40);
      }

			if(i!=0){
				line(lastPoint.x,lastPoint.y,lastPoint.z,p.x,p.y,p.z);
			}
			
			lastPoint = p;
		}
	}

	//-------------------------------------------------------------
	// Utils
	//-------------------------------------------------------------
	String removeMultipleSpaceInString(String s){
		return s.replaceAll("\\s+", " ");
	}

	//-------------------------------------------------------------
	// class de point
	//-------------------------------------------------------------
	class Point{
		int id; //id du point
		float x; 
		float y;
		float z; 
		float f; //vitesse
		int g; //type de mouvement

		Point(int id, int g, float x, float y, float z, float f){
			this.id = id;
			this.g = g;
			this.x = x;
			this.y = y;
			this.z = z;
			this.f = f;
		}	
	}
}
