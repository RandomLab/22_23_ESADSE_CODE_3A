import processing.serial.*;
Serial bob;
String inString="";
float signal0=0;
float signal1=0;
void setup(){
  size(1024,800,P2D);
  bob = new Serial(this, "/dev/ttyACM0", 115200); 
  bob.bufferUntil(10);
}

void draw(){
  //background(0);
  ellipse(200,200,signal0,signal1);

}

void serialEvent(Serial p) { 
  inString = p.readString();
  String [] data = split(inString,":");
  if(data.length>=2){
    signal0 = float(data[0]);
    signal1 = float(data[1]);
  }
}
