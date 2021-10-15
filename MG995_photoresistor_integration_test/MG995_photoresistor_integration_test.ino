#include "TimerOne.h"

const int PHOTO_1 = 0;
const int PHOTO_2 = 1;
const int SERVO = 3;
const int SPIN_MOD = 2;

int suggestedSpin = 0;
int pulse = 128;
int spin = 1;
const int MIN_PULSE = 50;
const int MAX_PULSE = 255;

const int threshold_low = 100;
const int threshold_high = 200;
int threshold;
const bool reversed = false;

void setup() {
  pinMode(SERVO, OUTPUT);
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  Serial.begin(9600);

  Timer1.initialize(10000);
  Timer1.attachInterrupt(handleServo);
}

void loop() {
  
}

void handleServo() {
  setSuggestedSpin();
  setPulse();
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
  
  Serial.println(pulse);
  analogWrite(SERVO, pulse);
}
