import processing.pdf.*;

void setup() {
 //
 size(800,800);
 beginRecord(PDF, "record.pdf");
 //
 background(255,0,0);
}

void draw() {
  //
  float rx = random(width);
  float ry = random(height);
  float rs = random(50);
  ellipse(rx,ry,rs,rs);
  if(frameCount == 100) {
    //
    endRecord();
    exit();
  }
}
