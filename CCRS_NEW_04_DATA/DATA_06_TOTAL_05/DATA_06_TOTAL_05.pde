//

import processing.pdf.*;

size(260, 1020, PDF, "chart-combine3.pdf");
background(255);
noStroke();
fill(102, 204, 255);
fill(255, 204, 102);
fill(255, 102, 51);
strokeCap(SQUARE);

Table tableRain = loadTable("rain.csv");
Table tableSuns = loadTable("sunshine.csv");
Table tableTemp = loadTable("temp.csv");
//.getXxx( row, column )


for (int i=0; i<tableRain.getRowCount (); i++) {
  for (int j=1; j<tableRain.getColumnCount (); j++) {
    // get amount of rain to make circle diameter
    // get temp to work out color
    float t = tableTemp.getFloat(i, j);
    float v = map(t,0,20,0,255);
    fill(v,51,51);
    noStroke();
    // get sunshine to work out size
    float d = tableSuns.getFloat(i, j)/10;
    ellipse(j*20, i*20+20, d, d);
    // get rain
    stroke(51,204,255,153);
    float r = tableRain.getFloat(i, j);
    r = 20/r*10;
    for(float x=0; x<20; x+= r) {
      line(j*20+x-5, i*20+10, j*20+x-15, i*20+30);
    }
  }
}

//save("exp.tiff");
exit();

