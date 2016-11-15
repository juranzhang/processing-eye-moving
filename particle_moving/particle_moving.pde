// Pixel-sized particles version, of 'surfs_up'.
// Particles are now directly noise driven omitting the flow field.
// Array[], particle, pixel, noise()
// Mouse click to reset, mouseX adjusts background clear.

Particle[] particles;
float alpha;
int number_particles = 1000;
void setup() {
  size(900, 500);
  background(0);
  noStroke();
  setParticles();
}

void draw() {
  alpha = 5;
  fill(0, alpha);
  rect(0, 0, width, height);

  loadPixels();
  for (Particle p : particles) {
    p.move();
  }
  updatePixels();
}

void setParticles() {
  particles = new Particle[number_particles];
  for (int i = 0; i < number_particles; i++) { 
    float x = random(width);
    float y = random(height);
    float adj = map(y, 0, height, 128, 0);
    int c = color(255, adj, 0);
    particles[i]= new Particle(x, y, c);
  }
}

void mousePressed() {
  setParticles();
}

class Particle {
  float posX, posY, incr, theta;
  color  c;

  Particle(float xIn, float yIn, color cIn) {
    posX = xIn;
    posY = yIn;
    c = cIn;
  }

  public void move() {
    update();
    wrap();
    display();
  }

  void update() {
    incr +=  .008;
    theta = noise(posX * .008, posY * .004, incr);
    posX += 2 * cos(theta);
    posY += 2 * sin(theta);
  }

  void display() {
    if (posX > 0 && posX < width && posY > 0  && posY < height) {
      pixels[(int)posX + (int)posY * width] =  c;
    }
  }

  void wrap() {
    if (posX < 0) posX = width;
    if (posX > width ) posX =  0;
    if (posY < 0 ) posY = height;
    if (posY > height) posY =  0;
  }
}