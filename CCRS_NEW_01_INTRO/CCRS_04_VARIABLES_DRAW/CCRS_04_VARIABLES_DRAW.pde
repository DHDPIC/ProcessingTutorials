// @DHDPIC

// ALL THE SIMPLE SHAPES

int br = 160;
int bg = 255;
int bb = 200;

color red = color(255,0,0);

int sSize = 200;

int ellipX = 125;
int ellipY = 300;

int circX = 300;
int circY = 350;

// SET SIZE
size(800,600);

// set background color
background(br,bg,bb);

// default fill is white & stroke is black
// rectangle
rect(50,50,200,150);

// set fill
fill(red);
// square
rect(400,50,sSize,sSize);

// set fill
fill(60,80,120);
// ellipse
ellipse(ellipX,ellipY,150,100);

// change stroke
stroke(255,60,180);
// circle
ellipse(circX,circY,100,100);

// remove stroke
noStroke();
// set fill
fill(255,240,90);
// triangle
triangle(200,400,400,500,100,550);

// add stroke back
stroke(10,120,40);
// set stroke weight
strokeWeight(3);
// set fill
fill(255,30,90);
// quadrangle
quad(500,300,700,400,750,500,550,550);
