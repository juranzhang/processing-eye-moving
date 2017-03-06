Star[] galaxy = new Star [10];

void setup(){
 size(500,500); 
 for(int i=0;i<galaxy.length;i++){
   // define every variables for each instance
   galaxy[i] = new Star(random(0.1,0.5),random(200,400),random(100,400),random(100,400),random(10,30));
  }
}

void draw(){
  background(255);
  for(int i=0;i<galaxy.length;i++){
    galaxy[i].display();
  }
}