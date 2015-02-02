// @DHDPIC

// random

void setup() {
  size(800,600);
}

void draw() {
  // draw a line from random start position to random end position
  line(random(width),random(height),random(width),random(height));
}
