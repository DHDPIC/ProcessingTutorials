// using csv data from wunderground

import processing.pdf.*;

size(260, 2120, PDF, "chart.pdf");
background(255);
noStroke();
fill(255, 153, 51);

Table table = loadTable("wunder1.csv", "header");
//.getXxx( row, column )


for (int i=0; i<table.getRowCount (); i++) {
  float d = table.getFloat(i, 1 );
  ellipse(100, i*20+100, d, d);
}

//save("exp.tiff");
exit();

