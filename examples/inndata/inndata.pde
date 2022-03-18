#include <Jokermusikk.h>

// Vel pin til utgang:
int pinUtgang = 1;

// Vel pin potie:
int pinPotie = 2;

// Skap variablar som me skal bruka seinare:
int verdiPotie = 0;
int hastighet = 0;

// Bestem kva noter du skal ha:
int noter[6][2] = {
  {C,4},
  {D,4},
  {E,4},
  {G,4},
  {A,4},
  {E,4}
};

// Bestem når musikken er av/på:
float rytmer[][6] = {
  {0.75, 0.25, 0.5, 1 , 0.5, 1}
};

// Seia ifrå til chipen korleis vert pinene brukte:
void setup()
{
  pinMode(pinUtgang,OUTPUT);
  pinMode(pinPotie,INPUT);
}

// Skriv koden som skal gjentast heile tida:
void loop()
{
  verdiPotie = analogRead(pinPotie);
  hastighet = map(verdiPotie, 0, 1023, 0, 500);
  spel(noter, 6, rytmer[0], hastighet);
}
