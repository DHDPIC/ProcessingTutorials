// @DHDPIC

// random

void setup() {
  size(800,600);
}

void draw() {
  // make the stroke color a random color
  float r = random(1);
  if(r > 0.5) {
    stroke(255,0,0);
  } else {
    stroke(0);
  }
  // draw a line from random start position to random end position
  line(random(width),random(height),random(width),random(height));
}
