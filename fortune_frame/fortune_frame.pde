Ball ball1 = new Ball(400, 400, 100, 100);
int i;
boolean pressed = false;
String [] fortunes = {"YOU WILL BE RICH", "YOU WILL BE FAMOUS", "YOU WILL CHANGE THE WORLD", "YOU WILL LOSE ALL YOUR MONEY"};
void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  ball1.drawBall();
  ball1.drawText(fortunes[i], pressed);
}

void mousePressed() {
  if (ball1.checkBoundary(mouseX, mouseY)) {
    pressed = true;
    i = (int)random(fortunes.length);
  }
}

void mouseReleased() {
  pressed = false;
}