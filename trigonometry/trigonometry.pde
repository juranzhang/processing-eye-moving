/*
  Juran Zhang
  Oct 25 2016
  Use trigonometry to draw eyes that track mouse location
  */
  
int eye_dim = 100;
int pupil_dim = 40;

void setup() {
  size(500,500);
}

void draw() {
  background(255);
  // left eye
  ellipse(150,200,eye_dim,eye_dim);
  // right eye
  ellipse(350,200,eye_dim,eye_dim);
  float x1,x2;
  float y1,y2;
  
  /* 
    squared distance between eye centers and mouse location
    left eye:
    dis1^2 = (mouseX - left_eye_center_X)^2 + (mouseY - left_eye_center_Y)^2
    
    right eye:
    dis2^2 = (mouseX - right_eye_center_X)^2 + (mouseY - right_eye_center_Y)^2
  */
  float dis1=pow(mouseX-150,2)+pow(mouseY-200,2);
  dis1 = sqrt(dis1);
  float dis2=pow(mouseX-350,2)+pow(mouseY-200,2);
  dis2 = sqrt(dis2);
  float scale;
  
  /*
    Scenarios: 
    1. Mouse location is pupil center. dis <= 30
    Boundary condition: pupil pupil touches the eye. Distance from eye center to pupil center is 30. 
    
    2. Mouse location is not pupil center. dis > 30
  */
  
  // left eye
  if(dis1<=30) {
    x1=mouseX;
    y1=mouseY;
  }
  else {
    scale=dis1/30;
    x1=(mouseX-150)/scale+150;
    y1=(mouseY-200)/scale+200;
  }
  
  // right eye
  if(dis2<=30) {
    x2=mouseX;
    y2=mouseY;
  }
  else {
    scale=dis2/30;
    x2=(mouseX-350)/scale+350;
    y2=(mouseY-200)/scale+200;
  }
  
  // pupils
  ellipse(x1,y1,40,40);
  ellipse(x2,y2,40,40);
}