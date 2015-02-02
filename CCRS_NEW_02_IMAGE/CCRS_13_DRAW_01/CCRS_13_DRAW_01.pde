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
  for(int y=0; y<img.height; y+=12) {
    for(int x=0; x<img.width; x+=12) {
      //
      color c = img.pixels[x + img.width * y];
      fill(c);
      ellipse(x,y,10,10);
    }
  }
}
