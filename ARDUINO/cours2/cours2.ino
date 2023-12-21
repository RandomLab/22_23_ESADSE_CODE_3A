

int ledR = 10;
int ledG = 9;
int ledB = 11;

void setup() {
  pinMode(ledR, OUTPUT);
  pinMode(ledG, OUTPUT);
  pinMode(ledB, OUTPUT);
}

void loop() {
  //  analogWrite(ledR,int(random(200)));
  //  analogWrite(ledG,int(random(255)));
  //  analogWrite(ledB,int(random(255)));
  //
  //  delay(1000);
  //  analogWrite(ledR,0);
  //  analogWrite(ledG,0);
  //  analogWrite(ledB,0);

  // a en morse
  analogWrite(ledR, 200);
  delay(1000);
  analogWrite(ledR, 0);
  delay(1000);
  analogWrite(ledR, 200);
  delay(2000);
  analogWrite(ledR, 0);
  delay(2000);
}
