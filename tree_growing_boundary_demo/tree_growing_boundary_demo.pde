/*
This is a demo code to show how to control tree growing inside a customized boundary.
Part of the code of the tree growing function refers to the code on openprocessing.org/sketch/144159
*/
Tree[] current;
void setup() {
  size(800, 600);
  background(0);
  ellipseMode(CENTER);
  fill(255);
  noStroke();
  smooth();
  current = new Tree[1];
  current[0] = new Tree();
}
void draw() {
  for (int i=0;i<current.length;i++) {
    PVector loc = current[i].location;
    float diam = current[i].diameter;
    ellipse(loc.x, loc.y, diam, diam);
    current[i].update();
  }
}
void mousePressed() {
  background(0);
  current = new Tree[1];
  current[0] = new Tree();
}