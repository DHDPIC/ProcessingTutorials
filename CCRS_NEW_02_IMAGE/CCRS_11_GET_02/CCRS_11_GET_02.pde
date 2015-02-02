// GET IMAGE DATA

// create variable
PImage img;

void setup() {
size(800,600);
// load image from data folder
img = loadImage("mountains.jpg");
}




void draw() {
  background(255/2);
// render image to screen
image(img,0,0);
// find color where mouse is
PImage p = get(mouseX,mouseY, 100, 100);
image(p,width/2-50,height/2-50);
}
