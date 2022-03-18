#include <Jokermusikk.h>

// Vel pin til utgang:
int pinUtgang = 1;

// Bestem hastighet til musikken:
int hastighet = 500;

// Bestem kva noter du skal ha:
int noter[6][2] = {
  {C,2},
  {D,1},
  {E,1},
  {G,2},
  {A,2},
  {E,1}
};

// Bestem når musikken er av/på:
float rytmer[][6] = {
  {0.75, 0.25, 0.5, 1 , 0.5, 1}
};

// Seia ifrå til chipen korleis vert pinene brukte:
void setup()
{
  pinMode(pinUtgang,OUTPUT);
}

// Skriv koden som skal gjentast heile tida:
void loop()
{
  spel(noter, 6, rytmer[0], hastighet);
}
