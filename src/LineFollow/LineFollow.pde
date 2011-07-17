int switchPin = 13;

int switchRead = 0;
void setup()
{
  //Serial.begin(9600);
  pinMode(switchPin, INPUT);
}

void loop()
{
  switchRead = digitalRead(switchPin);
  //Serial.println(switchRead);
}
