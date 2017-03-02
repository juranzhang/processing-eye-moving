/*
  @Juran Zhang
  What does randomSeed() do?
*/
void setup(){
  noLoop();
  /*
    By default, random() produces different results 
    each time the program is run. 
    Set the seed parameter to a constant 
    to return the same pseudo-random numbers 
    each time the software is run.
  */
  
  /*
    TODO:
    1. run the program and record the output
    2. run the program again to see if the output changes
    3. run the program again to see if the output changes
    4. comment line 25 randomSeed(0)
    5. run and record the output
    6. run the program again to see if the output changes
    7. run the program again to see if the output changes
   */
  randomSeed(0);
}

// we only run draw() once
void draw(){
  // print 10 lines of random generated numbers
  for(int i=0;i<10;i++){
    println(i+" "+random(0,10));
  }
  
}