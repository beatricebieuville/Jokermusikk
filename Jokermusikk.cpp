/*
  Musikk.cpp - Library for generating tones on Attiny.
*/

#include "Arduino.h"
#include "Jokermusikk.h"

void lyd(int note, int octave, float duration, int speed)
{
  TCCR1 = 0x90 | (8-octave); // for 1MHz clock
  OCR1C = note-1;         // set the OCR
  delay(duration*speed);
  TCCR1 = 0x90;              // stop the counter
  delay(10);
}

void pause(int duration, int speed)
{
  delay(duration*speed);
}

void spel(int selection[][2], int items, float pattern[], int speed)
{
  for (int i = 0; i < items; i+=1){
    lyd(selection[i][0], selection[i][1], pattern[i], speed);
  }
  /*for (int i = 0; i < 5; i+=1){
    if (pattern[i] == 0){
      pause(1, speed);
    } else if (pattern[i] == 1){
      lyd(selection[i][0], selection[i][1], 1, speed);
    }
  }*/
}
