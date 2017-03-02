/*
  Juran Zhang
  This program serves to show the difference
  between random, randomGaussian and noise.
*/
float xoff = 0.0;
float yoff = 0.0;

float anchor1x;
float anchor1y;
float anchor2x;
float anchor2y;

void setup(){
  size(400,800);
  frameRate(10);
}

void draw(){
  background(255);
  xoff = xoff + .1;
  yoff = yoff + .05;
  //bezier(396, 263, 201, 327, 172, 167, 0, 261);
  // random
  anchor1x = random(-20,20);
  anchor1y = random(-20,20);
  anchor2x = random(-20,20);
  anchor2y = random(-20,20);
  bezier(396, 263, 201+anchor1x, 327+anchor1y, 172+anchor2x, 167+anchor2y, 0, 261);
  // ellipses show the location of anchor nodes
  fill(255,0,0);
  ellipse(201+anchor1x,327+anchor1y,10,10);
  ellipse(172+anchor2x,167+anchor2y,10,10);
  fill(255);
  
  // randomGaussian
  anchor1x = randomGaussian()*20;
  anchor1y = randomGaussian()*20;
  anchor2x = randomGaussian()*20;
  anchor2y = randomGaussian()*20;
  translate(0,200);
  bezier(396, 263, 201+anchor1x, 327+anchor1y, 172+anchor2x, 167+anchor2y, 0, 261);
  fill(0,255,0);
  ellipse(201+anchor1x,327+anchor1y,10,10);
  ellipse(172+anchor2x,167+anchor2y,10,10);
  fill(255);
  
  // noise
  anchor1x = noise(xoff)*100;
  anchor1y = noise(xoff)*100;
  anchor2x = noise(yoff)*100;
  anchor2y = noise(yoff)*100;
  translate(0,200);
  bezier(396, 263, 201+anchor1x, 327+anchor1y, 172+anchor2x, 167+anchor2y, 0, 261);
  fill(0,0,255);
  ellipse(201+anchor1x,327+anchor1y,10,10);
  ellipse(172+anchor2x,167+anchor2y,10,10);
  fill(255);
}