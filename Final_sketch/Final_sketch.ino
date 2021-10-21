#include <DHT.h>
#include <OneWire.h>
#include <DallasTemperature.h>
#include <Arduino.h>
#include <Wire.h>
#include <BMP180I2C.h>

// Photoresistors and servo motor control
const int PHOTO_1 = 0; // Photoresistor #1 pin
const int PHOTO_2 = 1; // Photoresistor #2 pin
const int SERVO_DATA = 3; // Servo data pin

int suggestedSpin = 0;
const int SPIN_MOD = 1; // Servo motor speed multiplier
int pulse = 128; // Current PWM duty cycle (between MIN_PULSE and MAX_PULSE)
const int MIN_PULSE = 50; // Minimum PWM signal registered by servo
const int MAX_PULSE = 255; // Maximum PWM signal registered by servo

const int THRESHOLD_LOW = 100; // Low threshold for hysteresis
const int THRESHOLD_HIGH = 200; // High threshold for hysteresis
int threshold; // Current threshold for hysteresis
const bool reversed = false; // Reverse spin direction?
//

// DHT22 humidity sensor
const int DHT_DATA = 7; // DHT22 data pin
float lastKnownHumidity = 0;
DHT dht(DHT_DATA, DHT22);
//

// DS18B20
const int DS18B20_DATA = 2; // DS18B20 data pin
float lastKnownTemperature;
OneWire oneWire(DS18B20_DATA);
DallasTemperature ds18b20(&oneWire);
//

// BMP180
#define I2C_ADDRESS 0x77
float lastKnownPressure;
BMP180I2C bmp(I2C_ADDRESS);
//

void setup() {
  // Sensor initialization
  dht.begin();
  ds18b20.begin();
  Wire.begin();
  bmp.begin();
  bmp.resetToDefaults();
  bmp.setSamplingMode(BMP180MI::MODE_UHR);
  pinMode(SERVO_DATA, OUTPUT);
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);

  Serial.begin(9600);
}

void loop() {
  handleServo();
  readWeather();
  delay(2000);
}

void readWeather() {
  Serial.println("Reading weather data...");
  readHumidity();
  readTemperature();
  readBarometricPressure();
  Serial.println();
}

void readHumidity() {
  lastKnownHumidity = dht.readHumidity();

  Serial.print("Humidity: ");
  Serial.print(lastKnownHumidity);
  Serial.println("%");
}

void readTemperature() {
  ds18b20.requestTemperatures();

  lastKnownTemperature = ds18b20.getTempCByIndex(0) * 1.8 + 32;

  Serial.print("Temperature: ");
  Serial.print(lastKnownTemperature);
  Serial.println(" Fahrenheit");
}

void readBarometricPressure() {
  if (bmp.measurePressure()) {
    do { } while (!bmp.hasValue());

    lastKnownPressure = bmp.getPressure();
    
    Serial.print("Pressure: ");
    Serial.print(lastKnownPressure);
    Serial.println(" Pa");
  }
}

void handleServo() {
  do {
    setSuggestedSpin();
    setPulse();
    delay(10);
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
    if (p1 - p2 > threshold && pulse < MAX_PULSE) {
      suggestedSpin = spin;
      threshold = THRESHOLD_LOW;
    } else {
      suggestedSpin = 0;
      threshold = THRESHOLD_HIGH;
    }
  } else if (p2 > p1) {
    if (p1 - p2 < -threshold && pulse > MIN_PULSE) {
      suggestedSpin = -spin;
      threshold = THRESHOLD_LOW;
    } else {
      suggestedSpin = 0;
      threshold = THRESHOLD_HIGH;
    }
  }
}

void setPulse() {
  pulse = pulse + suggestedSpin * SPIN_MOD;
  if (pulse <= MIN_PULSE) pulse = MIN_PULSE;
  if (pulse >= MAX_PULSE) pulse = MAX_PULSE;

  Serial.print("Servo PWM: ");
  Serial.println(pulse);
  analogWrite(SERVO_DATA, pulse);
}
