// @DHDPIC

// SOUND VISUALISER

import ddf.minim.*;

Minim minim;

AudioInput in;

void setup() {
  //
  size(1280, 720);
  
  minim = new Minim(this);
  
  in = minim.getLineIn(Minim.STEREO, 512);
  strokeWeight(10);
}

void draw() {
  //background(0);
  noStroke();
  fill(0,21);
  rect(0,0,width,height);
  //stroke(255);
  // draw the waveforms
  float amplitudeLeft = 0;
  for(int i = 0; i < in.bufferSize(); i++)
  {
    //line(i, 50 + in.left.get(i)*50, i+1, 50 + in.left.get(i+1)*50);
    //line(i, 150 + in.right.get(i)*50, i+1, 150 + in.right.get(i+1)*50);
    amplitudeLeft += abs(in.left.get(i));
  }
  // divide added bits data by buffer size
  amplitudeLeft /= in.bufferSize();
  //println(amplitudeLeft);
  
  float scale = map(amplitudeLeft,0,0.5,0,height);
  println(scale);
  noFill();
  stroke(255);
  ellipse(width/2,height/2,scale,scale);
  
  
}

void stop()
{
  // always close Minim audio classes when you are done with them
  in.close();
  minim.stop();
  
  super.stop();
}
