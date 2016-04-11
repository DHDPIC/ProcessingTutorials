//

size(400,400);

Table table = loadTable("data.csv","header");
// .getXxx( row, column )
int val1 = table.getInt(2,1);      // val now has the value 235
float val2 = table.getFloat(3,2);  // val2 now has the value 44.758068
String s = table.getString(0,3);   // s now has the value "Happy"

println(val1);
println(val2);
println(s);

for(int i=0; i<table.getRowCount(); i++) {
  int xp = table.getInt(i,0);
  int yp = table.getInt(i,1);
  float d = table.getFloat(i,2);
  ellipse(xp,yp,d,d);
}
