// Calculate sum of a list of numbers in a String
String numbers = "8,67,5,309";
// Converting the String array to an int array
int[] list = int(split(numbers, ',')); 
int sum = 0;
for (int i = 0; i < list.length; i++) {
  sum = sum + list[i];
  println(list[i]);
}
println("total is...");
println(sum);
