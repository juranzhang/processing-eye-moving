/*
  The ball class. Inside the class, you can draw the ball,
 the text box at the center of the ball and a boolean function that checks the boudnary.
 */
class Ball {
  int x, y, dim1, dim2;
  Ball(int x1, int y1, int dim_x, int dim_y) {
    x = x1;
    y = y1;
    dim1 = dim_x;
    dim2 = dim_y;
  }

  void drawText(String fortune, boolean checkPressed) {
    fill(0);
    if (checkPressed) {
      text(fortune, x+dim1/2, y+dim2/2);
    }
  }

  void drawBall() {
    fill(255);
    ellipse(x, y, dim1, dim2);
  }

  boolean checkBoundary(int mouse_x, int mouse_y) {
    if (mouse_x>x-dim1/2 && mouse_x <x+dim1/2 && mouse_y<y+dim2/2 && mouse_y>y-dim2/2) {
      return true;
    } else {
      return false;
    }
  }
}