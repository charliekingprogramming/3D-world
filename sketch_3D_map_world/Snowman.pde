class Snowman extends GameObject {

  PVector dir;
  float speed;

  Snowman() {
    super(random(-2000, 2000), height - 50 , random(-2000, 2000), 50);
    speed = 10;
    //float vx = cos(leftRightAngle);
    //float vy = tan(upDownAngle);
    //float vz = sin(leftRightAngle);
    dir = new PVector(eyex, 0, eyez);
    dir.setMag(speed);
  }

  void act() {
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
    //    if (obj instanceof Bullet) {
    //  if ( dist(location.x, location.y, myObj.location.x, myObj.location.y)*2 <= size/2 + myObj.size) {
    //    myObj.lives = 0;
    //    deadAsteroids++;
    //    if (deadAsteroids >= 42) {
    //      mode = WIN;
    //    }
    //    lives = 0;
    //    if (size > 30) {
    //      myObjects.add(new Asteroid( size/2, location.x, location.y));
    //      myObjects.add(new Asteroid( size/2, location.x, location.y));
    //    }
    //    if (size > 10) {
    //      myObjects.add(new Particle(location));
    //      myObjects.add(new Particle(location));
    //      myObjects.add(new Particle(location));
    //      myObjects.add(new Particle(location));
    //      myObjects.add(new Particle(location));
    //      myObjects.add(new Particle(location));
    //    }
    //  }
    //}
  }
  void show() {

    world.pushMatrix();
    world.translate(loc.x, loc.y, loc.z);
    world.fill(white);
    world.noStroke();
    world.sphere(size);
    world.popMatrix();
    world.pushMatrix();
    world.translate(loc.x, loc.y - 70, loc.z);
    world.sphere(size/2);
    world.popMatrix();
  }
}
