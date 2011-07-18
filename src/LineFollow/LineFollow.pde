const int NORMAL_SPEED = 100;
const int TURN_SPEED = 40;

int switchPin = 13;
int ledNotify = 2;

int ledPower = 7;
int rightPR = A0;
int midPR = A4;
int leftPR = A2;

// Pins for motors
int mtrA = 3;
int mtrADir = 12;
int mtrB = 11;
int mtrBDir = 13;

// Used to calibrate the photoresistor readings
int maxRight, maxMid, maxLeft;
int rightOffset, leftOffset;

int switchRead = 0;

int rightMtr, leftMtr;
int rightRead, midRead, leftRead;

// Setup will take care of calibrating the photresistors
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
  
  leftOffset = maxMid - maxLeft;
  rightOffset = maxmix - maxRight;
  
  digitalWrite(ledNotify, HIGH);
  while(!digitalRead(switchPin)) {}
  digitalWrite(ledNotify, LOW);
  
  Serial.println(maxRight);
  Serial.println(maxMid);
  Serial.println(maxLeft);
}

void loop()
{
  rightMtr = leftMtr = NORMAL_SPEED;
  
  rightRead = analogRead(rightPR);
  midRead = analogRead(midPR);
  leftRead = analogRead(leftPR);
  
  if (rightRead - rightOffset < midRead)
  {
    // turn right here
  }
  else if (leftRead - leftOffset < midRead)
  {
    // turn left here
  }
  
  
}
