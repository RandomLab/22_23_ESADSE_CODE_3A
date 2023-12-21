PImage  img; 
PrintWriter file;

void  setup(){

  size(200, 200);
  img = loadImage("bmp.jpg");
  image(img, 0, 0);
  img.resize(width,height);
  file = createWriter("bmp.gcode");
}

void  draw(){
 
  /*
  img.loadPixels();
  for(int y = 0; y < width; y++){
    for (int x = 0; x < height; x++){
      
      int i = x + y*img.width;
      print(color(img.pixels[i]) + "\n");
      if (color(img.pixels[i]) == 0){
        file.println("G1" + " " + "X" + x + " " + "Y" + y + " " + "Z0");
      }
      else{
        file.println("G1" + " " + "X" + x + " " + "Y" + y + " " + "Z1");
      }
      
    }
  }*/
  
  for(int y = 0; y < height; y++){
    for (int x = 0; x < width; x++){
      color  pixel = img.get(x, y);
      print(hex(pixel)+ "\n");
      if (brightness(pixel) < 10){
        //file.println("0");
        file.println("G1" + " " + "X" + x + " " + "Y" + y + " " + "Z1");
        file.println("G1" + " " + "X" + x + " " + "Y" + y + " " + "Z0");
        file.println("G1" + " " + "X" + x + " " + "Y" + y + " " + "Z1");
      }
      else{
        //file.println("1");
        //file.println("G1" + " " + "X" + x + " " + "Y" + y + " " + "Z1");
      }
    }
  }
  
  exit();
}
