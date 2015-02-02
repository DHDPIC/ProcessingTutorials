// @DHDPIC

// webcam fun

import processing.video.*;

Capture cam;

int s;

void setup() {
  //
  size(1280, 720);
  //
  String[] cameras = Capture.list();
  cam = new Capture(this, cameras[0]);
  cam.start();
  //
  noStroke();
  //
  s = 10;
}

void draw() {
  //
  if (cam.available() == true) {
    cam.read();
    background(0);
    //
    s = int( map(mouseY, 0, height, 5, 50) );
    //
    for (int y=0; y<cam.height; y+=s) {
      for (int x=0; x<cam.width; x+=s) {
        //
        color c = cam.pixels[x + cam.width * y];
        float r = red(c) * float(x)/cam.width;
        float g = green(c) * float(y)/cam.height;
        float b = float(mouseX)/cam.width* blue(c);
        
        fill(r,g,b);
        if(mousePressed) {
          ellipse(x, y, s, s);
        } else {
          rect(x, y, s, s);
        }
      }
    }
  }
  //
  //image(cam,0,0);
}

