#include <Jokermusikk.h>

// Vel pin til utgang:
int pinUtgang = 1;

// Vel pin potie:
int pinPotieHastighet = 2;
int pinPotieRytme = 3;

// Skap variablar som me skal bruka seinare:
int hastighet = 0;
int lesPotieHastighet = 0;
int rytme = 0;
int lesPotieRytme = 0;

// Bestem kor lmange noter du skal ha:
int mengdeNoter = 6;

// Bestem kva noter du skal ha:
int noter[6][2] = {
  {C,4},
  {D,4},
  {E,4},
  {G,4},
  {A,4},
  {E,4}
};

// Lag fleire rytmer til din musikk:
float rytmer[2][6] = {
  {0.75, 0.25, 0.5, 1 , 0.5, 1},
  {1, 1, 0.75, 25 , 1, 1}
  };

// Seia ifrå til chipen korleis vert pinene brukte:
void setup()
{
  pinMode(pinUtgang,OUTPUT);
  pinMode(pinPotieHastighet,INPUT);
  pinMode(pinPotieRytme,INPUT);
}

// Skriv koden som skal gjentast heile tida:
void loop()
{
  // Hent data frå Hastighet potie:
  lesPotieHastighet = analogRead(pinPotieHastighet);
  hastighet = map(lesPotieHastighet, 0, 1023, 0, 500);

  // Hent data frå Rytme potie:
  lesPotieRytme = analogRead(pinPotieRytme);
  valgtRytme = map(lesPotieRytme, 0, 1023, 0, 1);

  spel(noter, 6, rytmer[valgtRytme], hastighet);
}
