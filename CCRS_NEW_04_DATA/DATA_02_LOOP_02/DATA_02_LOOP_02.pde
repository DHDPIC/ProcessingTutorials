size(800,600);
colorMode(HSB, width, height, 100);
noStroke();
background(0,0,21);

for(int y=0; y<height; y+=15) {
  for(int x=0; x<width; x+=15) {
    //
    fill(x,y,100);
    rect(x,y, 10, 10);
  }
}
