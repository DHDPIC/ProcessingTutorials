// @DHDPIC

// CONDITIONALS

Boolean working = true;
float num = 50.5;

size(800,600);

// TEST THESE VARIABLES
if(working == true) {
  println("yes working is true");
  ellipse(400,300,200,200);
}

if(num < 30) {
  println("yes num is less than thirty");
  fill(0,200,50);
} else {
  println("nope, num is more than thirty");
  fill(200,0,50);
}

rect(600,200,100,100);


