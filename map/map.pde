/*
  Juran Zhang 
  Oct 26 2016
  Use map() function to do eye tracking of mouse location
  */
  
void setup () {
  size(500, 500);
}

void draw () {
  background(255); 
  // left eye
  ellipse(150, 250, 100, 100);
  ellipse(150+map(mouseX, 0, width, -20, 20), 250+map(mouseY, 0, height, -20, 20), 40, 40);
  //right eye
  ellipse(350, 250, 100, 100);
  ellipse(350+map(mouseX, 0, width, -20, 20), 250+map(mouseY, 0, height, -20, 20), 40, 40);
}