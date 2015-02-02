import processing.video.*;

Capture cam;

void setup() {
  size(1280, 720);

  String[] cameras = Capture.list();

  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }

    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, cameras[0]);
    cam.start();
  }
}

void draw() {
  if (cam.available() == true) {
    cam.read();
    cam.loadPixels();
    // don't render image
    //image(cam, 0, 0);
    randomSeed(1); // keeps random points the same
    background(0);
    for (int y=0; y<height; y+=64) {
      for (int x=0; x<width; x+=64) {
        //
        color c = cam.pixels[x+width*y]; //cam.get(x,y);
        stroke(c);
        line(x, y, random(width), random(height));
      }
    }
    println(frameRate);
  }
}

