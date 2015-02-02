PImage img;

void setup() {
  size(800,600);
  // load image and load pixels
  img = loadImage("mountains.jpg");
  img.loadPixels();
  //
  noStroke();
}

void draw() {
  //
  background(0);
  for(int y=0; y<img.height; y+=12) {
    for(int x=0; x<img.width; x+=12) {
      //
      color c = img.pixels[x + width * y];
      fill(c);
      float s = dist(x,y,mouseX,mouseY)/20;
      ellipse(x,y,s,s);
    }
  }
}
