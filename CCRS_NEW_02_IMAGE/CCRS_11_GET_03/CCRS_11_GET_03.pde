// GET IMAGE DATA

// create variable
PImage img;

size(800, 600);

// load image from data folder
img = loadImage("mountains.jpg");
// set background
background(255/2);
//image(img, 0, 0); // DON'T RENDER IMAGE
// variables to track position
int srcX = 0;
int outX = 0;
// loop through image
while(srcX < width) {
  // random widths for sampling and rendering image
  int srcW = int(random(1,200));
  int outW = int(random(1,200));
  // get image section and render
  PImage p = img.get(srcX, 0, srcW, height);
  image(p, outX, 0, outW, height);
  // update positions variables
  srcX += srcW;
  outX += outW;
}

