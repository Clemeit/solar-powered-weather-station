
// DHT22
#include <DHT.h>
#include "TimerOne.h"

float lastKnownHumidity;

const int DHT_DATA = 7;
DHT dht(DHT_DATA, DHT22);

// DS18B20
#include <OneWire.h>
#include <DallasTemperature.h>

float lastKnownTemperature;

OneWire oneWire(2);
DallasTemperature ds18b20(&oneWire);

// BMP180
#include <Arduino.h>
#include <Wire.h>
#include <BMP180I2C.h>
#define I2C_ADDRESS 0x77

float lastKnownPressure;

BMP180I2C bmp(I2C_ADDRESS);

// MG995 and photoresistors
const int PHOTO_1 = 0;
const int PHOTO_2 = 1;
const int SERVO = 3;
const int SPIN_MOD = 1;

int suggestedSpin = 0;
int pulse = 128;
int spin = 1;
const int MIN_PULSE = 50;
const int MAX_PULSE = 255;

const int threshold_low = 100;
const int threshold_high = 200;
int threshold;
const bool reversed = false;

// ========

void setup() {
  dht.begin();
  ds18b20.begin();
  Wire.begin();
  bmp.begin();
  bmp.resetToDefaults();
  bmp.setSamplingMode(BMP180MI::MODE_UHR);
  pinMode(SERVO, OUTPUT);
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);

  Serial.begin(115200);

  delay(5000); // wait 5 seconds for WiFi module to start
  
  Timer1.initialize(10000000);
  Timer1.attachInterrupt(readWeather);
}

void loop() {
  handleServo();
}

void readWeather() {
  readTemperature();
  readHumidity();
  readBarometricPressure();
}

void readHumidity() {
  lastKnownHumidity = dht.readHumidity();

  Serial.println(lastKnownHumidity);
}

void readTemperature() {
  ds18b20.requestTemperatures();

  lastKnownTemperature = ds18b20.getTempCByIndex(0) * 1.8 + 32;

  Serial.println(lastKnownTemperature);
}

void readBarometricPressure() {
  if (bmp.measurePressure()) {
    do { } while (!bmp.hasValue());

    Serial.println(bmp.getPressure());
  }
}

void handleServo() {
  do {
    setSuggestedSpin();
    setPulse();
    delay(25);
  } while (suggestedSpin != 0);
}

void setSuggestedSpin() {
  int spin = 1;
  if (reversed == true) {
    spin = -1;
  }
  int p1 = analogRead(PHOTO_1);
  int p2 = analogRead(PHOTO_2);

  if (p1 > p2) {
    if (p1 - p2 > threshold) {
      suggestedSpin = spin;
      threshold = threshold_low;
    } else if (p1 - p2 < threshold) {
      suggestedSpin = 0;
      threshold = threshold_high;
    }
  } else if (p2 > p1) {
    if (p1 - p2 < -threshold) {
      suggestedSpin = -spin;
      threshold = threshold_low;
    } else if (p1 - p2 > -threshold) {
      suggestedSpin = 0;
      threshold = threshold_high;
    }
  }
}

void setPulse() {
  pulse = pulse + suggestedSpin * SPIN_MOD;
  if (pulse <= MIN_PULSE) pulse = MIN_PULSE;
  if (pulse >= MAX_PULSE) pulse = MAX_PULSE;

  analogWrite(SERVO, pulse);
}
