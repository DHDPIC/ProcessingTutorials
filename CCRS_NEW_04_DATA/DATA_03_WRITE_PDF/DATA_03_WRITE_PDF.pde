import processing.pdf.*;

 //
 size(800,800);
 beginRecord(PDF, "record.pdf");
 //
 background(255,0,0);

for(int i=0; i<100; i++) {
  float rx = random(width);
  float ry = random(height);
  float rs = random(50);
  ellipse(rx,ry,rs,rs);
}

endRecord();
exit();
