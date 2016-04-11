//

size(260, 2120);
background(255);
noStroke();
fill(102, 204, 255);

Table table = loadTable("uk.txt", "header, csv");
//.getXxx( row, column )


for (int i=0; i<table.getRowCount (); i++) {
  for (int j=1; j<table.getColumnCount (); j++) {
    // get amount of rain to make circle diameter
    float d = table.getFloat(i, j)/10;
    ellipse(j*20, i*20+20, d, d);
  }
}

save("chart.tiff");