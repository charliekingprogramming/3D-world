class Particle extends GameObject {

  PVector dir;
  float speed;

  Particle(PVector newlocation) {
    loc = newlocation.copy();
    speed = 5;
    dir = new PVector(eyex, 0, eyez);
    float vx = cos(leftRightAngle);
    float vy = tan(upDownAngle);
    float vz = sin(leftRightAngle);
    dir = new PVector(vx, vy, vz);
    dir.setMag(speed);
    loc = new PVector(x, y, x);
  }

  void act() {
    loc.x = loc.x + 5;
    println("?");
    int hitx = int(loc.x+2000) / gridSize;
    int hity = int(loc.z+2000) / gridSize;
    if (map.get(hitx, hity) == white) {
      loc.add(dir);
    } else {
      lives = 0;
      //for (int i = 0; i < 5; i++) {
      //  objects.add(new Particle(loc));
      //}
    }
  }
  
    void show() {

    world.pushMatrix();
    world.translate(loc.x, loc.y, loc.z);
    world.fill(white);
    world.noStroke();
    world.box(5);
    world.popMatrix();

  }
  
}
