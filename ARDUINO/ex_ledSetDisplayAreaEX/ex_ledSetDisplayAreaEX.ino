#include "DFRobot_LedDisplayModule.h"
DFRobot_LedDisplayModule LED(&Wire, 0xE0);

void setup() {
  Serial.begin(115200);
  while (LED.begin(LED.e8Bit) != 0) {
    Serial.println("Failed to initialize the chip , please confirm the chip connection!");
    delay(1000);
  }
  Serial.begin(115200);
}

double val = 1234;

void loop() {
  LED.setDisplayArea(1, 2, 3, 4, 5, 6, 7, 8);

  String myString = String(val);
  val++;
  LED.print(val);
  Serial.println(myString);
  String a = String(myString.charAt(0));
  String b = String(myString.charAt(1));
  String c = String(myString.charAt(2));
  String d = String(myString.charAt(3));

  LED.print(a.c_str(), b.c_str(), c.c_str(), d.c_str(), "A.", "A.", "A.", "A.");

  delay(1000);
}
