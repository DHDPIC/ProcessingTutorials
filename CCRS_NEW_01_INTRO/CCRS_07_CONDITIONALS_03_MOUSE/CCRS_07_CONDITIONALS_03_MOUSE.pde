// @DHDPIC

// USING PROCESSING TO RUN COMMANDS EVERY FRAME

// CREATE VARIABLES
int counter;


// SETUP YOUR SKETCH
void setup() {
  size(800,600);
  counter = 0;
}

// COMMANDS THAT RUN EVERY FRAME
void draw() {
  counter += 1;
  println(counter);
  // check what side of the screen the mouse is on
  if(mouseX < 400) {
    stroke(255,0,0);
  } else {
    stroke(0);
  }
  point(mouseX,mouseY);
}

