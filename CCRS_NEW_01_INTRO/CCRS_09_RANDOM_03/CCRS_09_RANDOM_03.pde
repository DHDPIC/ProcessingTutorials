// @DHDPIC

// random

void setup() {
  size(800,600);
}

void draw() {
  // make the stroke color a random color
  stroke(random(255),random(255),random(255));
  // draw a line from random start position to random end position
  line(random(width),random(height),random(width),random(height));
}
