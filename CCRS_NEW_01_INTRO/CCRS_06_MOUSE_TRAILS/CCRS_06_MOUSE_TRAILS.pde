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
  // DRAW A POINT WITH THE MOUSE
  point(mouseX,mouseY);
}

