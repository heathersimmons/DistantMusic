//visualMatrixDing_131127

//part of Distant Music project
//by Sherif Taalab and Richard Borbridge
//November 27, 2013
//Provides visualiation responding to imput from a midi keyboard through Processing ControlP5.Matrix example
//Uses digital piano keyboard attached to Arduino+Xbee+MIDI shield to wirelessly transmit performances
//Uses Arduino+Xbee+UNO to connect to client laptop and interface with on-board MIDI output

import themidibus.*; //Import the library
MidiBus myBus; // The MidiBus

import processing.serial.*;

import controlP5.*;
ControlP5 cp5;
Dong[][] d;
int nx = 50;
int ny = 1;
color start=color(0, 0, 0);
color finish;
float amt = 0.0;

int data;
int counter;

int program = 45; 
int channel = 0;
int pitch = 64; //64=C
int velocity = 127;
boolean note1= false;
boolean note2= false;
boolean note3= false;
boolean note4= false;
boolean note5= false;

PImage piano;
PImage guitar;
PImage acoustic;
PImage bass;
PImage xylophone;
PImage violin;

Serial myPort;  // Create object from Serial class
String inputString;      // Data received from the serial port
String resultString;
String ports[] =  Serial.list();


void setup() {

  size(1680, 1050);
  piano = loadImage("piano.jpg");
  guitar = loadImage("Guitar.jpg");
  acoustic = loadImage("acoustic.jpg");
  bass = loadImage("bass.jpg");
  xylophone = loadImage("xylophone.jpg");
  violin = loadImage("Violin.jpg");
  
  MidiBus.list(); // List all available Midi devices on STDOUT. This will show each device's index and name.

  //                 Parent         In                   Out
  //                   |            |                     |
  // myBus = new MidiBus(this, "Creative Prodikeys PC-MIDI", "Out-B USB MIDISPORT 2x2"); // Create a new MidiBus using the device names to select the Midi input and output devices respectively.
  myBus = new MidiBus(this, 2, 4); // RICHARD Create a new MidiBus using the device names to select the Midi input and output devices respectively.
  //myBus = new MidiBus(this, 1, 3); // SHERIF Create a new MidiBus using the device names to select the Midi input and output devices respectively.

  //println(Serial.list());
  //String BTName = Serial.list()[8];
  //myPort = new Serial(this, BTName, 31250);

  fill(start) ;
  finish = color(random(255), random(255), random(255));
 
 //setup the parameters of the matrix controlling the visualization
  cp5 = new ControlP5(this);
  //cp5.printPublicMethodsFor(Matrix.class);  //print all functions available to contrl matrix
  cp5.addMatrix("Piano")
    .setPosition(700, 1010)
      .setSize(300, 30)
        .setGrid(nx, ny)
          .setGap(10, 1)
            .setInterval(80)
              .setMode(ControlP5.MULTIPLES)
                .setColorBackground(color(255))
                  .setBackground(color(40))

                    ;

  cp5.getController("Piano").getCaptionLabel().alignX(CENTER);

  // use setMode to change the cell-activation which by 
  // default is ControlP5.SINGLE_ROW, 1 active cell per row, 
  // but can be changed to ControlP5.SINGLE_COLUMN or 
  // ControlP5.MULTIPLES
  d = new Dong[nx][ny];
  for (int x = 0;x<nx;x++) {
    for (int y = 0;y<ny;y++) {
      d[x][y] = new Dong();
    }
  }  
  noStroke();
  smooth();
}
void draw() {
  background(0);

  image (piano, 20, 20, 50, 50 );
  image (xylophone, 20, 100, 50, 50 );
  image (acoustic, 20, 180, 50, 50 );


//Change the instrument based on standard MIDI defintions
//Java Sound Library does not seem to recognize definitions greater than 50 of 128
//click mouse on defined area of the screen (corresponding to location of the icons)
if (mousePressed) {
    if (mouseX>20 && mouseX <20+50 && mouseY>20 && mouseY <20+50) {
      println("The mouse is pressed and over the 1 button");
      fill(0);
      myBus.sendMessage(0xCc, channel, 1, 0); //0xCc=change instrument message, third value selects instrument
    }
    else if (mouseX>20 && mouseX <20+50 && mouseY>20 && mouseY <100+50) {
      println("The mouse is pressed and over the 24 button");
      fill(0);
      myBus.sendMessage(0xCc, channel, 10, 0); //third value selects instrument
    }
    else if (mouseX>20 && mouseX <20+50 && mouseY>20 && mouseY <180+50) {
      println("The mouse is pressed and over the 24 button");
      fill(0);
      myBus.sendMessage(0xCc, channel, 50, 0); //third value selects instrument
    }
  }
 
//slowly randomize the colour change
  amt+=.01;
  if (amt >= 1) {
    amt = 0.0;
    start = finish;
    finish = color(random(255), random(255), random(255));
  }

  fill(lerpColor(start, finish, amt));
  pushMatrix();
  translate(width/2, height/2);
  rotate(frameCount*0.001);
  for (int x = 0;x<nx;x++) {
    for (int y = 0;y<ny;y++) {
      d[x][y].display();
    }
  }
  popMatrix();

}

//update the matrix
void Piano(int theX, int theY) {
  //println("got it: "+theX+", "+theY);
  d[theX][theY].update();
  //change the pitch to correspond to the active cell of the matrix 
  // pitch = theX+theY+50;
}

//make the circles pop on defined event
void controlEvent(ControlEvent theEvent) {
}
class Dong {
  float x, y;
  float s0, s1;
  Dong() {
    float f= random(-PI, PI);
    x = cos(f)*random(200, 400);
    y = sin(f)*random(200, 400);
    s0 = random(3, 58);
  }
  void display() {
    s1 += (s0-s1)*0.1;
    ellipse(x, y, s1, s1);
  }
  void update() {
    s1 = 250;
  }
}

