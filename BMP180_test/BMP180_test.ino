// Firmware test for BMP180 Temperature Sensor
// Connect the BMP180 to 3.3V and GND
// Connect the data pin to A4 on the Arduino
// Connect the clock pin to A5 on the Arduino
// No pullup resistor is needed - the Arduino has
//  an internal pullup

#include <Arduino.h>
#include <Wire.h>
#include <BMP180I2C.h>
#define I2C_ADDRESS 0x77
#include "TimerOne.h"

float lastKnownPressure;

BMP180I2C bmp(I2C_ADDRESS);

void setup() {
  Serial.begin(9600);
  Wire.begin();
  bmp.begin();
  bmp.resetToDefaults();
  bmp.setSamplingMode(BMP180MI::MODE_UHR);

  Timer1.initialize(1000000);
  Timer1.attachInterrupt(readBarometricPressure);
}

void loop() {
  
}

void readBarometricPressure() {
  if (bmp.measurePressure()) {
    do {
      delay(100);
    } while (!bmp.hasValue());

//    lastKnownPressure = bmp.getPressure();
    Serial.print("Pressure: ");
    Serial.print(bmp.getPressure());
    Serial.println(" Pa");
  }
}
