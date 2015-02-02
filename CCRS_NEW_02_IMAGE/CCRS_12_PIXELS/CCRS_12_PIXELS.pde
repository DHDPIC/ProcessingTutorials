PImage img;

void setup() {
  size(800,600);
  // load image and load pixels
  img = loadImage("mountains.jpg");
  img.loadPixels();
  // loop through all pixels
  for(int i=0; i<img.pixels.length; i++) {
    // get color of a pixel
    color c = img.pixels[i];
    // set color of pixel to extracted color with extra red and less blue
    img.pixels[i] = color( red(c)+51, green(c), blue(c)-51 );
    // THIS IS HOW INSTAGRAM WORKS!!!!
  }
  //
  img.updatePixels();
}

void draw() {
  image(img,0,0);
  
}
