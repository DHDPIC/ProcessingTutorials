// Splitting a String based on spaces
String spaceswords = "The quick brown fox jumps over the lazy dog.";
String[] list = split(spaceswords, " ");
for (int i = 0; i < list.length; i++) {
  println(list[i] + " " + i);
}
