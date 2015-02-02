// @DHDPIC

// recreate The Jump by Jack Goldstein

import processing.video.*;

Capture cam;

int gridSize;
float bulbSize;

void setup() {
  //
  size(1280, 960);
  //
  String[] cameras = Capture.list();
  cam = new Capture(this, cameras[0]);
  cam.start();
  //
  noStroke();
  //
  gridSize = 10;
  bulbSize = gridSize*0.7;
  //
  randomSeed(5);
}

void draw() {
  //
  randomSeed(5);
  //
  if (cam.available() == true) {
    cam.read();
    background(0);
    //
    for (int y=0; y<cam.height; y += gridSize) {
      for (int x=0; x<cam.width; x += gridSize) {
        //
        float a = random(102,255);
        float s = random(bulbSize*0.9,bulbSize*1.1);
        color c = cam.pixels[x + width * y];
        //
        if(brightness(c) > 153) {
          //
          //float a = map(brightness(c), 153, 255, 0, 255);
          fill(255,153,51,a);
          ellipse(x, y, s, s);
          //
          if(brightness(c) > 204) {
            fill(255,102,0,a/5);
            ellipse(x, y, s*4, s*4);
          }
        }
      }
    }
  }
}

void mousePressed() {
  //
  saveFrame("grab####.png");
}

