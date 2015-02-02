// @DHDPIC

// SIMPLE DRAWING TOOL

// CREATE VARIABLES
Boolean isDrawing;
float x;
float y;

// SETUP YOUR SKETCH
void setup() {
  size(800,600);
  // GIVE VARAIBLES VALUES
  isDrawing = false;
  x = mouseX;
  y = mouseY;
  // setup drawing style
  background(0);
  fill(255,0,0);
  noStroke();
}

// COMMANDS THAT RUN EVERY FRAME
void draw() {
  // UPDATE X & Y VALUE
  x = mouseX;
  y = mouseY;
  // SET FILL TO RELATE TO POSITION OF MOUSE
  fill(x,y,0);
  if(isDrawing == true) {
    ellipse(x, y, 10,10);
  }
}

// FUNCTION TO START DRAWING
void mousePressed() {
  isDrawing = true;
}

// FUNCTION TO STOP DRAWING
void mouseReleased() {
  isDrawing = false;
}

// FUNCTION TO SAVE ON KEY PRESS OR WIPE ARTWORK
void keyPressed() {
  if(key == 's') {
    saveFrame("exports/exported-####.jpg");
  }
  if(key == 'r') {
    background(0);
  }
}


