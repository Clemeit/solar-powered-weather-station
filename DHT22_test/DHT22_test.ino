// Firmware test for DHT22 Temperature Sensor
// Connect the DHT22 to 5V and GND
// Connect the data pin to D7 on the Arduino
// Connect a 4.7k pullup resistor to the data line

#include <DHT.h>
#include "TimerOne.h"

float lastKnownHumidity;

const int DHT_DATA = 7;
DHT dht(DHT_DATA, DHT22);

void setup() {
  dht.begin();
  Serial.begin(9600);

  Timer1.initialize(3000000);
  Timer1.attachInterrupt(readHumidity);
}

void loop() {
  
}

void readHumidity() {
  lastKnownHumidity = dht.readHumidity();

  Serial.print("Humidity: ");
  Serial.print(lastKnownHumidity);
  Serial.println("%");
}
