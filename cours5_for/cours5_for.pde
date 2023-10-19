void setup() {
  size(800, 800, P2D);
}


void draw() {
  background(0);
  // Pour i qui commence à 0,
  // et est plus petit que 100
  // et il s'incrémente de un en un
  // i++  <=>  i+=1  <=>  i=i+1
  for (int i=0; i<width; i+=10) {
    for (int j=0; j<height; j+=10) {
      fill(random(255),random(255),random(255));
      noStroke();
      rect(i, j, 10, 10);
    }
  }
  
}
