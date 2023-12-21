void setup() {
  Serial.begin(115200);
}

void loop() {
  int signal0 = analogRead(0);
  int signal1 = analogRead(1);
  Serial.print(signal0);
  Serial.print(":");
  Serial.print(signal1);
  Serial.println();
  delay(20);
}
