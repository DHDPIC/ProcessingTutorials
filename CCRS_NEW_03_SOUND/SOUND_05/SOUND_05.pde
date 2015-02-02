// @DHDPIC

// SOUND VISUALISER

import ddf.minim.*;

Minim minim;

AudioInput player;
//AudioPlayer player;

color sc, ec, cc;
float ct;

float innerRadius, ampScale;

void setup() {
  //
  size(1280, 720);
  smooth();

  minim = new Minim(this);

  player = minim.getLineIn(Minim.STEREO, 512);
  //player = minim.loadFile("frenche.mp3");
  //player.play();
  strokeWeight(1);
  //
  innerRadius = 50;
  ampScale = 100;
  //
  sc = color(random(255), random(255), random(255));
  ec = color(random(255), random(255), random(255));
  //
  //noStroke();
  stroke(255);
  background(0);
}

void draw() {
  noStroke();
  //fill(0, 13);
  //rect(0, 0, width, height);
  // expander part
  //if (frameCount % 2 == 0) {
    PImage img = get(0, 0, width, height);
    image(img, width/2 - width*1.05/2,0, width*1.05, height*1.05);
  //}
  // colour blobs
  cc = lerpColor(sc, ec, ct);
  ct += 0.05;
  if (ct >= 1) {
    ct = 0;
    sc = ec;
    ec = color(random(51,255), 150, 100);
  }
  stroke(cc);
  // analyse audio and draw lines in circles
  for (int i=0; i<player.bufferSize(); i+= 1) {
      float amp = abs(player.mix.get(i));
      float angle = radians(float(i)/player.bufferSize()*360);
      float ix = width/2 + cos(angle) * innerRadius;
      float iy = 100 + sin(angle) * innerRadius;
      float ox = width/2 + cos(angle) * amp*ampScale + cos(angle)* innerRadius;
      float oy = 100 + sin(angle) * amp*ampScale + sin(angle) * innerRadius;
      //if(amp*ampScale > 10)  {
      line(ix, iy, ox, oy);
      //}
    }
  //println(frameRate);
}

void stop()
{
  // always close Minim audio classes when you are done with them
  player.close();
  minim.stop();

  super.stop();
}

color getCompliment(color c) {
  float r = red(c);
  float g = green(c);
  float b = blue(c);

  return color(r, b, g);
}

