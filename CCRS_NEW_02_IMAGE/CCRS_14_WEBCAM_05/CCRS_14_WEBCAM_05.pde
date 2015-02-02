import processing.video.*;

Capture cam;
int rs;

void setup() {
  size(1280, 720);

  String[] cameras = Capture.list();

  // The camera can be initialized directly using an 
  // element from the array returned by list():
  cam = new Capture(this, cameras[0]);
  cam.start();
  rs = int(random(1000));
}

void draw() {
  randomSeed(rs);
  if (cam.available() == true) {
    cam.read();
    //
    int srcX = 0;
    int outX = 0;
    // loop through image
    while (srcX < width) {
      // random widths for sampling and rendering image
      int srcW = int(random(1, 200));
      int outW = int(random(1, 200));
      // get image section and render
      PImage p = cam.get(srcX, 0, srcW, height);
      image(p, outX, 0, outW, height);
      // update positions variables
      srcX += srcW;
      outX += outW;
    }
  }
}

