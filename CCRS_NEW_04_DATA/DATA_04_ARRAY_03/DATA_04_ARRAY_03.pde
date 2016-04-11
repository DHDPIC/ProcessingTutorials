// arrays alternative


float[] randoms = new float[100];
// Use a for() loop to quickly iterate
// through and assign all values in an array.
for (int i = 0; i < randoms.length; i++) {
  randoms[i] = random(100);
  println(randoms[i]);
}