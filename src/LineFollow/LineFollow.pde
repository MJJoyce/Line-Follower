int switchPin = 13;
int ledPower = 7;
int rightPR = A0;
int midPR = A4;
int leftPR = A2;

int maxRight, maxMid, maxLeft;

int switchRead = 0;
void setup()
{
  Serial.begin(9600);
  pinMode(switchPin, INPUT);
  pinMode(ledPower, OUTPUT);
  pinMode(rightPR, INPUT);
  pinMode(midPR, INPUT);
  pinMode(leftPR, INPUT);
  
  for (int i = 0; i < 10; ++i)
  {
    maxRight += analogRead(rightPR);
    maxMid += analogRead(midPR);
    maxLeft += analogRead(leftPR);
  }
  
  maxRight /= 10;
  maxMid /= 10;
  maxLeft /= 10;
  
  while(!digitalRead(switchPin)) {}
  
  // Turn on an LED here to mark successful run?
}

void loop()
{
}
