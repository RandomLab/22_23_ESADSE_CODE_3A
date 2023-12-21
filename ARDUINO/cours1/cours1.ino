

int ledR = 10;
int ledG = 9;
int ledB = 11;

void setup() {
  pinMode(ledR,OUTPUT);
  pinMode(ledG,OUTPUT);
  pinMode(ledB,OUTPUT);
}

void loop() {
  digitalWrite(ledR,HIGH);
  delay(500);
  digitalWrite(ledG,HIGH);
  delay(500);
  digitalWrite(ledB,HIGH);
  delay(1000);

  digitalWrite(ledR,LOW);
  digitalWrite(ledG,LOW);
  digitalWrite(ledB,LOW);
}
