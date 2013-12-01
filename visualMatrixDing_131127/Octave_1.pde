//when pitch is received first time activate the matrix and play the note
//when pitch is received again, play the note and deactivate cell on the matrix
//activating the cell controls corresponding circle pops
void noteOn(int channel, int pitch, int velocity) {
  int notedelay=500;
  if (pitch==36) {
    note1=!note1;
    cp5.get(Matrix.class, "Piano").set(1, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note1)
    {
      cp5.get(Matrix.class, "Piano").set(1, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==37) {
    note1=!note1;
    cp5.get(Matrix.class, "Piano").set(2, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note1)
    {
      cp5.get(Matrix.class, "Piano").set(2, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==38) {
    note1=!note1;
    cp5.get(Matrix.class, "Piano").set(3, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note1)
    {
      cp5.get(Matrix.class, "Piano").set(3, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==39) {
    note1=!note1;
    cp5.get(Matrix.class, "Piano").set(4, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note1)
    {
      cp5.get(Matrix.class, "Piano").set(4, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==40) {
    note1=!note1;
    cp5.get(Matrix.class, "Piano").set(5, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note1)
    {
      cp5.get(Matrix.class, "Piano").set(5, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==41) {
    note1=!note1;
    cp5.get(Matrix.class, "Piano").set(6, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note1)
    {
      cp5.get(Matrix.class, "Piano").set(6, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==42) {
    note1=!note1;
    cp5.get(Matrix.class, "Piano").set(7, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note1)
    {
      cp5.get(Matrix.class, "Piano").set(7, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==43) {
    note1=!note1;
    cp5.get(Matrix.class, "Piano").set(8, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note1)
    {
      cp5.get(Matrix.class, "Piano").set(8, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==44) {
    note1=!note1;
    cp5.get(Matrix.class, "Piano").set(9, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note1)
    {
      cp5.get(Matrix.class, "Piano").set(9, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==45) {
    note1=!note1;
    cp5.get(Matrix.class, "Piano").set(10, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note1)
    {
      cp5.get(Matrix.class, "Piano").set(10, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==46) {
    note1=!note1;
    cp5.get(Matrix.class, "Piano").set(11, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note1)
    {
      cp5.get(Matrix.class, "Piano").set(11, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==47) {
    note1=!note1;
    cp5.get(Matrix.class, "Piano").set(12, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note1)
    {
      cp5.get(Matrix.class, "Piano").set(12, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }

