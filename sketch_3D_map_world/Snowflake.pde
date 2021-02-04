class Snowflake extends GameObject {
  
  //1. Instance variables: the data that each snowflake
  //                       needs to keep track of.
  float  size, speed;
  PVector dir;
  
  //2. Constructor(s): initializes the instance variables.
  //   Rules: no return type (void), name matches class
  Snowflake() {
        super(random(-2000, 2000), 0, random(-2000, 2000), 5);
    //x = random(0, width);
    //y = 9*height/10; 
        dir = new PVector(0, -5, 0);
    dir.setMag(speed);
    speed = 5;
  }
  
  //3. Behaviour Functions: functions that describe how
  //                        Snowflakes act and look.
  void act() {
    loc.y = loc.y + speed;
    if (y > height) {
      loc.y = 0;
      loc.x = random(0,width);
    }
    if(loc.y >= height - 2){
      loc.y = height;
      
    }
  }
  

}
