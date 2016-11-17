int x = 0;
int number_particles = 500;
Particle[] particles;
void setup() {
  size(400,400);
  background(0);
  particles = new Particle[number_particles];
  for (int i = 0; i < number_particles; i++) { 
    float x = random(width);
    float y = random(height);
    particles[i]= new Particle(x, y);
  }
}

void draw() {
  background(0);
  for (Particle p : particles) {
    p.update();
    p.show();
  }
}

class Particle {
  float posX, posY,ang;

  Particle(float xIn, float yIn) {
    posX = xIn;
    posY = yIn;
    ang = atan(yIn/xIn);
  }
  
  void update(){
    if(dist(posX,posY,mouseX,mouseY) <=50){
      ang = atan((mouseY-posY)/(mouseX-posX));
      if(mouseX<posX){
        posX = posX+5*cos(ang);
      }
      else{
        posX = posX-5*cos(ang);
      }
      
      if(mouseY<=posY){
        posY = posY+5*sin(ang);
      }
      else{
        posY = posY-5*sin(ang);
      }
    }
    else{
      posX = posX+0.5*cos(ang);
      posY = posY+0.5*sin(ang);
      ang = ang+random(PI/200)-PI/100;
    }
  }
  
  void show(){
    fill(255);
    ellipse(posX,posY,10,10);
  }
}