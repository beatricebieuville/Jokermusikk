/*
  Musikk.cpp - Library for generating tones on Attiny.
*/

#ifndef Jokermusikk_h
#define Jokermusikk_h

#include "Arduino.h"

const int C  = 239;
const int Cs = 225;
const int D  = 213;
const int Ds = 201;
const int E  = 190;
const int F  = 179;
const int Fs = 169;
const int G  = 159;
const int Gs = 150;
const int A  = 142;
const int As = 134;
const int B  = 127;

void lyd(int note, int octave, float duration, int speed);

void pause(int duration, int speed);

void spel(int selection[][2], int items, float pattern[], int speed);

#endif
