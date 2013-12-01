//XbeeMIDIShield_A

//part of Distant Music project
//by Sherif Taalab and Richard Borbridge
//November 27, 2013
//Provides visualiation responding to imput from a midi keyboard through Processing ControlP5.Matrix example
//Uses digital piano keyboard attached to Arduino+Xbee+MIDI shield to wirelessly transmit performances
//Uses Arduino+Xbee+UNO to connect to client laptop and interface with on-board MIDI output

// Based on SparkFun MIDI Sheild and MIDI Breakout test code

#include <SoftwareSerial.h>


// defines for MIDI Shield components only
#define KNOB1  0
#define KNOB2  1

#define BUTTON1  2
#define BUTTON2  3
#define BUTTON3  4

#define STAT1  7
#define STAT2  6

#define OFF 1
#define ON 2
#define WAIT 3

byte incomingByte;
byte note;
byte velocity;
int pot;

byte byte1;
byte byte2;
byte byte3;

int action=2; //1 =note off ; 2=note on ; 3= wait

//Setup the software serial (MIDI Shield's rx, tx physically remapped through loopback wires)
SoftwareSerial Serial2(8, 9); //Rx,tx


void setup() {

  pinMode(STAT1,OUTPUT);   
  pinMode(STAT2,OUTPUT);

  pinMode(BUTTON1,INPUT);
  pinMode(BUTTON2,INPUT);
  pinMode(BUTTON3,INPUT);

  digitalWrite(BUTTON1,HIGH);
  digitalWrite(BUTTON2,HIGH);
  digitalWrite(BUTTON3,HIGH);

  for(int i = 0;i < 10;i++) // flash MIDI Sheild LED's on startup
  {
    digitalWrite(STAT1,HIGH);  
    digitalWrite(STAT2,LOW);
    delay(30);
    digitalWrite(STAT1,LOW);  
    digitalWrite(STAT2,HIGH);
    delay(30);
  }
  digitalWrite(STAT1,HIGH);   
  digitalWrite(STAT2,HIGH);

  //start serial with midi baudrate 31250
  Serial2.begin(31250);
  Serial.begin(31250);
}

void loop () {

  //*************** MIDI OUT ***************//

  pot = analogRead(0);
  note = pot/8;  // convert value to value 0-127
  if(button(BUTTON1) || button(BUTTON2) || button(BUTTON3))
  {  
    Midi_Send(0x90,note,0x45);
    while(button(BUTTON1) || button(BUTTON2) || button(BUTTON3));
  }

  //*************** MIDI LOOPBACK ******************//
  //read SoftSerial, signal is coming from shield pins 0 and 1, which are used by attached Xbee
  if(Serial2.available() > 0)
  {
    byte1 = Serial2.read();
    byte2 = Serial2.read();
    byte3 = Serial2.read();

    Midi_Send(byte1, byte2, byte3);
  }

  //*************** MIDI IN ***************//
  //eliminated - this device is functioning as server only
  //can be adapted for future bidirectional communcation

}

void Midi_Send(byte cmd, byte data1, byte data2) {
  //write bytes to Serial2, so variables can be collected and passed to hardware serial through MIDI loopback function
  Serial.write(cmd);
  Serial.write(data1);
  Serial.write(data2);
  delay(100);
  Serial2.write(cmd);
  Serial2.write(data1);
  Serial2.write(data2);
}

void blink(){
  digitalWrite(STAT1, HIGH);
  delay(100);
  digitalWrite(STAT1, LOW);
  delay(100);
}

char button(char button_num)
{
  return (!(digitalRead(button_num)));
}
