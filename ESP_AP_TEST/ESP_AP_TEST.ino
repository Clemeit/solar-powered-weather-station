#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServer.h>

#ifndef APSSID
#define APSSID "ESPap"
#define APPSK  "thereisnospoon"
#endif

const char *ssid = APSSID;
const char *password = APPSK;

ESP8266WebServer server(80);

const byte numChars = 32;
char receivedChars[numChars] = "123";   // an array to store the received data
char displayData[numChars];

char temperature[10] = "0";
char humidity[10] = "0";
char pressure[20] = "0";

boolean newData = false;
int currentlyReading = 0; // 0=temp, 1=hum, 2=press

void handleRoot() {
  String ptr = "Temperature: " + (String)temperature;
  ptr += "<br/>Humidity: " + (String)humidity;
  ptr += "<br/>Pressure: " + (String)pressure;
  server.send(200, "text/html", ptr);
}

void setup() {
  delay(1000);
  Serial.begin(115200);
  Serial.println();
  Serial.print("Configuring access point...");
  WiFi.softAP(ssid, password);

  IPAddress myIP = WiFi.softAPIP();
  Serial.print("AP IP address: ");
  Serial.println(myIP);
  server.on("/", handleRoot);
  server.begin();
  Serial.println("HTTP server started");
}

void loop() {
  receiveSerial();
  if (newData == true) {
    //strncpy(displayData, newData, 32);
    switch (currentlyReading) {
      case 0: // temp
        strcpy(temperature, receivedChars);
        break;
      case 1: // hum
        strcpy(humidity, receivedChars);
        break;
      case 2: // press
        strcpy(pressure, receivedChars);
        break;
    }
    currentlyReading++;
    if (currentlyReading > 2) {
      currentlyReading = 0;
    }
    newData = false;
  }
  server.handleClient();
}

void receiveSerial() {
  static byte ndx = 0;
  char endMarker = '\n';
  char rc;
  
  while (Serial.available() > 0 && newData == false) {
      rc = Serial.read();

      if (rc != endMarker) {
          receivedChars[ndx] = rc;
          ndx++;
          if (ndx >= numChars) {
              ndx = numChars - 1;
          }
      }
      else {
          receivedChars[ndx] = '\0'; // terminate the string
          ndx = 0;
          newData = true;
      }
  }
}
