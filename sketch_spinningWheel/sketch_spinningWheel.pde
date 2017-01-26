color[] colorScheme = new color [36];
int time = 0;

void setup() {
  size(600, 600);
  rectMode(CENTER);
  colorScheme[0] = color(255, 204, 0);
  colorScheme[1] = color(255, 154, 0);
  colorScheme[2] = color(255, 104, 0);
  colorScheme[3] = color(255, 54, 0);
  colorScheme[4] = color(255, 4, 0);
  colorScheme[5] = color(255, 4, 50);
  colorScheme[6] = color(255, 4, 100);
  colorScheme[7] = color(255, 4, 150);
  colorScheme[8] = color(255, 4, 200);
  colorScheme[9] = color(255, 4, 255);
  colorScheme[10] = color(205, 4, 255);
  colorScheme[11] = color(155, 4, 255);
  colorScheme[12] = color(105, 4, 255);
  colorScheme[13] = color(55, 4, 255);
  colorScheme[14] = color(5, 4, 255);
  colorScheme[15] = color(5, 54, 255);
  colorScheme[16] = color(5, 104, 255);
  colorScheme[17] = color(5, 154, 255);
  colorScheme[18] = color(5, 204, 255);
  colorScheme[19] = color(5, 254, 255);
  colorScheme[20] = color(5, 254, 200);
  colorScheme[21] = color(5, 254, 155);
  colorScheme[22] = color(5, 254, 105);
  colorScheme[23] = color(5, 254, 55);
  colorScheme[24] = color(5, 254, 5);
  colorScheme[25] = color(55, 254, 5);
  colorScheme[26] = color(105, 254, 5);
  colorScheme[27] = color(155, 254, 5);
  colorScheme[28] = color(205, 254, 5);
  colorScheme[29] = color(255, 254, 5);
  colorScheme[30] = color(255, 204, 0);
  colorScheme[31] = color(255, 154, 0);
  colorScheme[32] = color(255, 54, 0);
  colorScheme[33] = color(255, 4, 0);
  colorScheme[34] = color(255, 4, 50);
  colorScheme[35] = color(255, 4, 100);
}

void draw() {
  background(0);
  // translate the origin of the canvas from (0,0) to (300,300)
  translate(width/2, height/2);

  // draw a rect at (500,300)
  fill(colorScheme[(time+35) % 36]);
  rect(200, 0, 80, 20);

  for (int i =0; i<35; i++) {
    rotate(2*PI/36);
    fill(colorScheme[(time + i) % 36]);
    rect(200, 0, 80, 20);
  }
  time++;
}