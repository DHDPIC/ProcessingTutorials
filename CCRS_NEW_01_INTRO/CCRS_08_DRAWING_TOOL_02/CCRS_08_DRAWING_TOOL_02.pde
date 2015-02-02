// @DHDPIC

// SIMPLE DRAWING TOOL

// CREATE VARIABLES
Boolean isDrawing;

// SETUP YOUR SKETCH
void setup() {
  size(800,600);
  // GIVE VARAIBLES VALUES
  isDrawing = false;
  // setup drawing style
  background(0);
  stroke(255);
}

// COMMANDS THAT RUN EVERY FRAME
void draw() {
  // SET STROKE COLOUR TO RELATE TO POSITION OF MOUSE
  stroke(mouseX,mouseY,0);
  if(isDrawing == true) {
    line(mouseX,mouseY,pmouseX,pmouseY);
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


