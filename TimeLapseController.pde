/*
 * TimeLapseController
 *
 * Create amazing time-lapse movie sequences using an Arduino and a
 * digital camera.
 *
 * Copyright 2009 Jonathan Oxer <jon@oxer.com.au>
 *
 * http://www.practicalarduino.com/projects/easy/time-lapse-controller
 */

int frameInterval = 300;          // Delay between pictures (in seconds)
int focusPin = 5;                 // Reed relay on digital pin 5
int shutterPin = 6;               // Reed relay on digital pin 6
int ledPin = 13;                  // LED connected to digital pin 13

void setup()
{

  pinMode(focusPin, OUTPUT);      // Set the focus pin as an output
  digitalWrite(focusPin, LOW);
  pinMode(shutterPin, OUTPUT);    // Set the shutter pin as an output
  digitalWrite(shutterPin, LOW);
  pinMode(ledPin, OUTPUT);        // Set the LED pin as an output
  digitalWrite(ledPin, LOW);
}

void loop()
{
  digitalWrite(ledPin, HIGH);     // Turn on activity LED
  digitalWrite(focusPin, HIGH);   // Turn on focus relay
  digitalWrite(shutterPin, HIGH); // Turn on shutter relay
  delay(500);                     // Hold the button for 1/2 second
  digitalWrite(ledPin, LOW);      // Turn off activity LED
  digitalWrite(shutterPin, LOW);  // Turn off shutter relay
  digitalWrite(focusPin, LOW);    // Turn off focus relay
  delay(1000 * frameInterval);    // Wait the required interval before repeating
}
