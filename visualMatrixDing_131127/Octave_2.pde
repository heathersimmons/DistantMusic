 if (pitch==48) {
    note2=!note2;
    cp5.get(Matrix.class, "Piano").set(13, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note2)
    {
      cp5.get(Matrix.class, "Piano").set(13, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }  
  if (pitch==49) {
    note3=!note3;
    cp5.get(Matrix.class, "Piano").set(14, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note3)
    {
      cp5.get(Matrix.class, "Piano").set(14, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==50) {
    note4=!note4;
    cp5.get(Matrix.class, "Piano").set(15, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note4)
    {
      cp5.get(Matrix.class, "Piano").set(15, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==51) {
    note5=!note5;
    cp5.get(Matrix.class, "Piano").set(16, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note5)
    {
      cp5.get(Matrix.class, "Piano").set(16, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==52) {
    note5=!note5;
    cp5.get(Matrix.class, "Piano").set(17, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note5)
    {
      cp5.get(Matrix.class, "Piano").set(17, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==53) {
    note5=!note5;
    cp5.get(Matrix.class, "Piano").set(18, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note5)
    {
      cp5.get(Matrix.class, "Piano").set(18, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==54) {
    note5=!note5;
    cp5.get(Matrix.class, "Piano").set(19, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note5)
    {
      cp5.get(Matrix.class, "Piano").set(19, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==55) {
    note5=!note5;
    cp5.get(Matrix.class, "Piano").set(20, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note5)
    {
      cp5.get(Matrix.class, "Piano").set(20, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==56) {
    note5=!note5;
    cp5.get(Matrix.class, "Piano").set(21, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note5)
    {
      cp5.get(Matrix.class, "Piano").set(21, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==57) {
    note5=!note5;
    cp5.get(Matrix.class, "Piano").set(22, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note5)
    {
      cp5.get(Matrix.class, "Piano").set(22, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==58) {
    note5=!note5;
    cp5.get(Matrix.class, "Piano").set(23, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note5)
    {
      cp5.get(Matrix.class, "Piano").set(23, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==59) {
    note5=!note5;
    cp5.get(Matrix.class, "Piano").set(24, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note5)
    {
      cp5.get(Matrix.class, "Piano").set(24, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
  if (pitch==60) {
    note5=!note5;
    cp5.get(Matrix.class, "Piano").set(25, 0, false);
    myBus.sendNoteOn(channel, pitch, velocity); 
    if (note5)
    {
      cp5.get(Matrix.class, "Piano").set(25, 0, true);
      myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
      delay(notedelay);
      myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOf
    }
  }
