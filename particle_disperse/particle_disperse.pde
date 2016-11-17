int x = 0;
int number_particles = 100;
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
    p.check();
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
    posX = posX+cos(ang);
    posY = posY+sin(ang);
  }
  
  void check(){
    if(dist(posX,posY,mouseX,mouseY) <=20){
      posX = mouseX - 20;
      posY = mouseY - 20;
      ang = ang-PI/100;
    }
    else{
      ang = ang+PI/100;
    }
  }
  
  void show(){
    fill(255);
    ellipse(posX,posY,10,10);
  }
}