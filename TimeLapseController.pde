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

int frameInterval = 300;             // Delay between taking pictures (in seconds)
int shutterPin = 12;                 // Reed relay connected to digital pin 12
int ledPin = 13;                     // LED connected to digital pin 13

void setup()
{
  pinMode( shutterPin, OUTPUT );     // Set the camera shutter pin as an output
  digitalWrite( shutterPin, LOW);
  pinMode( ledPin, OUTPUT );         // Set the LED pin as an output
  digitalWrite( ledPin, LOW);
}

void loop()
{
  digitalWrite( ledPin, HIGH );      // Turn on activity LED
  digitalWrite( shutterPin, HIGH );  // Turn on reed relay connected to camera shutter
  delay( 500 );
  digitalWrite( ledPin, LOW );       // Turn off activity LED
  digitalWrite( shutterPin, LOW );   // Turn off reed relay

  delay( frameInterval * 1000 );     // Wait the specified interval before looping again
}
