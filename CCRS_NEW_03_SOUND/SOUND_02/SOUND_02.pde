// @DHDPIC

// SOUND VISUALISER

import ddf.minim.*;

Minim minim;

AudioInput input;
AudioPlayer player;

color sc, ec, cc;
float ct; 

void setup() {
  //
  size(1280, 720);

  minim = new Minim(this);

  //input = minim.getLineIn(Minim.STEREO, 512);
  player = minim.loadFile("frenche.mp3");
  player.play();
  strokeWeight(10);
  //
  sc = color(random(255), random(255), random(255));
  ec = color(random(255), random(255), random(255));
  //
  noStroke();
  background(0);
}

void draw() {
  fill(0, 13);
  rect(0, 0, width, height);

  // expander part
  /*if (frameCount % 2 == 0) {
    PImage img = get(0, 0, width, height);
    image(img, width/2-(width*1.1/2), height/2-(height*1.1/2), width*1.1, height*1.1);
  }*/
  //
  float amplitudeLeft = 0;
  float amplitudeRight = 0;
  for (int i = 0; i < player.bufferSize (); i++)
  {
    amplitudeLeft += abs(player.left.get(i));
    amplitudeRight += abs(player.right.get(i));
  }
  // divide added bits data by buffer size
  amplitudeLeft /= player.bufferSize();
  amplitudeRight /= player.bufferSize();

  float scaleL = map(amplitudeLeft, 0, 1, 0, height);
  float scaleR = map(amplitudeRight, 0, 1, 0, height);
  //println(scale);

  // colour blobs
  cc = lerpColor(sc, ec, ct);
  ct += 0.001;
  if (ct >= 1) {
    ct = 0;
    sc = ec;
    ec = color(random(255), random(255), random(255));
  }

  fill(cc);
  ellipse(width*0.3, height/2, scaleL, scaleL);
  fill(getCompliment(cc));
  ellipse(width*0.7, height/2, scaleR, scaleR);

  //
  println(frameRate);
}

void stop()
{
  // always close Minim audio classes when you are done with them
  input.close();
  minim.stop();

  super.stop();
}

color getCompliment(color c) {
  float r = red(c);
  float g = green(c);
  float b = blue(c);

  return color(r, b, g);
}

