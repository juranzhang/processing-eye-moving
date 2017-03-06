class Star{
  /*
    theta is predefined to be 0 
    other variables are to be defined by constructor
    variables include the dimension of star, rotation speed, 
    position(x,y), number of lines
  */
  float theta = 0;
  float thetaIncr;
  float numLines;
  float centerX;
  float centerY;
  float dim;
  
  // constructor to define the variables
  Star(float thetaIncr_input,float numLines_input,float centerX_input,float centerY_input,float dim_input){
    thetaIncr = thetaIncr_input;
    numLines = numLines_input;
    centerX = centerX_input;
    centerY = centerY_input;
    dim = dim_input;
  }
  
  // draw the actual star for every instance
  void display() {
    for (float i=0; i<numLines; i+=10) {
      pushMatrix();
      translate(centerX,centerY);
      rotate(radians(theta + i));
      line(0, -dim, 0, dim);
      popMatrix();
    }
    theta+=thetaIncr;
  }
}