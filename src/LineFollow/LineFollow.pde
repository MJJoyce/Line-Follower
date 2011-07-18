int switchPin = 13;
int ledNotify = 2;

int ledPower = 7;
int rightPR = A0;
int midPR = A4;
int leftPR = A2;

int mtrA = 3;
int mtrADir = 12;
int mtrB = 11;
int mtrBDir = 13;

int maxRight, maxMid, maxLeft;

int switchRead = 0;
void setup()
{
  Serial.begin(9600);
  pinMode(switchPin, INPUT);
  pinMode(ledNotify, OUTPUT); 
  pinMode(ledPower, OUTPUT);
  pinMode(rightPR, INPUT);
  pinMode(midPR, INPUT);
  pinMode(leftPR, INPUT);

  digitalWrite(ledPower, HIGH);
  
  for (int i = 0; i < 10; ++i)
  {
    maxRight += analogRead(rightPR);
    maxMid += analogRead(midPR);
    maxLeft += analogRead(leftPR);
  }
  
  maxRight /= 10;
  maxMid /= 10;
  maxLeft /= 10; 
  
  digitalWrite(ledNotify, HIGH);
  while(!digitalRead(switchPin)) {}
  digitalWrite(ledNotify, LOW);
  
  Serial.println(maxRight);
  Serial.println(maxMid);
  Serial.println(maxLeft);
}

void loop()
{
}
