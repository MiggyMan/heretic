/*  Firmware for the **49* (eg SS495) hall-sensor based filament diameter sensor.
    Reads analog value from the sensor and provides a mapped and filtered diameter reading over I2C (optional analog output)

    Built for ATTiny85

    Upload firmware via programmer, using internal 16 MHz clock on ATTiny

    Compact filament sensor hardware and PCB: [URL]

    Licensed CC-0 / Public Domain by Thomas Sanladerer
*/
#include <elapsedMillis.h>

#define FaultLED 0 
#define StatusLED 10 
#define SensorPin 3
#define CalPin 8
#define PWMPin 7
#define sampleDelay 10
#define sampleTime 200
#define samples sampleTime/sampleDelay

// mode 0 i2c mode 1 serial
#define mode 1
  #include <Wire.h>
#if mode ==0
  #include <Wire.h>
  #define I2C_ADDR 43 //iterate for additional sensors in same I2C bus
#elif mode == 1
  #include <SoftwareSerial.h>
  //SoftwareSerial softSerial(4, 6);
  SoftwareSerial softSerial(1, 2);
#else
  #error No valid communication mode specified
#endif  

elapsedMillis avgTimer;
elapsedMillis sTimer;

#define smooth 100 //intensity of digital lowpass filtering

float dia = 0.0;
int sample=0;
int sampleSet[samples];
int average=0;

void setup() {
  //setup pins
  pinMode(FaultLED, OUTPUT);
  pinMode(StatusLED, OUTPUT);
  pinMode(SensorPin, INPUT);
  pinMode(CalPin, INPUT);
  pinMode(PWMPin, OUTPUT);

  //start I2C
  #if mode ==0
    Wire.begin(I2C_ADDR);
    Wire.onRequest(requestISR);
  #else
    Wire.begin();
    softSerial.begin(19200);
  #endif
  // Neeedless led flashing to show we're alive.
  digitalWrite(FaultLED, HIGH);
  digitalWrite(StatusLED, LOW);
  delay(250);
  digitalWrite(FaultLED, LOW);
  digitalWrite(StatusLED, HIGH);
  delay(250);
  digitalWrite(FaultLED, HIGH);
  digitalWrite(StatusLED, LOW);
  delay(250);
  digitalWrite(FaultLED, LOW);
  delay(50);
  digitalWrite(FaultLED, HIGH);
  digitalWrite(StatusLED, HIGH);
  delay(50);
  digitalWrite(FaultLED, LOW);
  digitalWrite(StatusLED, LOW);
  delay(50);
  digitalWrite(FaultLED, HIGH);
  digitalWrite(StatusLED, HIGH);
  delay(50);
  digitalWrite(FaultLED, LOW);
  digitalWrite(StatusLED, LOW);

  softSerial.println("Samples: "+String(samples));
  
}

void loop() {
  //get fresh reading
  if (sTimer >= sampleDelay ) {
    sTimer = 0;
    sampleSet[sample] = analogRead(SensorPin);
    sample++;
    if(avgTimer>sampleTime) {
      avgTimer=0;
      digitalWrite(StatusLED, HIGH);
      delay(50);
      digitalWrite(StatusLED, LOW);
      sample=0;
      average=0;
      for (int x = 0; x < samples; x++) {
        average = average + sampleSet[x];
      }
      average = average / samples;
      softSerial.println("Avg: "+String(average));
      dia = convert2dia(average) ;
      //light LED if sensor saturated (or button pressed)
      if (average < 3 or average > 1020) {
        digitalWrite(FaultLED, HIGH);
      }else {
        digitalWrite(FaultLED, LOW);
      }
    }else{
      softSerial.println("Sample: "+String(sampleSet[sample]));
    }
  }
}

#if mode ==0
void requestISR() {
  //sends smoothed diameter reading in um as two bytes via I2C
  //first byte is upper 8 bits, second byte lower 8 bits
  long senddia = 1000 * dia;
  byte b1 = floor(senddia / 256);
  byte b2 = (senddia % 256);
  Wire.write(b1);
  Wire.write(b2);
  //optional: Send raw reading for calibration
}
#endif

float convert2dia(float in) {
  //converts an ADC reading to diameter
  //Inspired by Sprinter / Marlin thermistor reading
  byte numtemps = 2;
  const float table[numtemps][2] = {
    //{ADC reading in, diameter out}

    //CALIBRATION ONLY
    //(unless you want to do the lookup on your host)
    
    { 0  , 0 },
    { 1023  , 1.023 }
  };
  byte i;
  float out;
  for (i = 1; i < numtemps; i++)
  {
    //check if we've found the appropriate row
    if (table[i][0] > in)
    {
      float slope = ((float)table[i][1] - table[i - 1][1]) / ((float)table[i][0] - table[i - 1][0]);
      float indiff = ((float)in - table[i - 1][0]);
      float outdiff = slope * indiff;
      float out = outdiff + table[i - 1][1];
      return (out);
      break;
    }
  }
}

void calibrate(){
 /*  TODO: Self-calibration
  *  Press button, insert 1mm brill bit shaft, press to confirm reading
  *  Repeat for 1.5mm, 1.7mm, 2mm
  *  (optional: use interpolated value based on point between 1.5 and 2mm if 1.7mm if read with implausible value
  */
}

void scanI2C() {
    byte error, address;
  int nDevices;
 
  softSerial.println("Scanning...");
 
  nDevices = 0;
  for(address = 1; address < 127; address++ )
  {
    // The i2c_scanner uses the return value of
    // the Write.endTransmisstion to see if
    // a device did acknowledge to the address.
    Wire.beginTransmission(address);
    error = Wire.endTransmission();
 
    if (error == 0)
    {
      Serial.print("I2C device found at address 0x");
      if (address<16)
        Serial.print("0");
      Serial.print(address,HEX);
      Serial.println("  !");
 
      nDevices++;
    }
    else if (error==4)
    {
      Serial.print("Unknown error at address 0x");
      if (address<16)
        Serial.print("0");
      Serial.println(address,HEX);
    }    
  }
  if (nDevices == 0)
    Serial.println("No I2C devices found\n");
  else
    Serial.println("done\n");
 
}
