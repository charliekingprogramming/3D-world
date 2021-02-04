
void game() {
  imageMode(CORNER);
  world.beginDraw();
  world.textureMode(NORMAL);
  world.background(0);

 
  if (spacekey && timer >=10) {
     println(spacekey);
    objects.add(new Bullet());        //draw bullet
    timer = 0;
    //mode = GAMEOVER;
}

objects.add(new Snowflake());objects.add(new Snowflake());objects.add(new Snowflake());objects.add(new Snowflake());objects.add(new Snowflake());objects.add(new Snowflake());

if (timer == 1) {
  objects.add(new Snowman());  objects.add(new Snowman());  objects.add(new Snowman());
}

  //lights();
  world.pointLight(255, 255, 255, eyex, eyey, eyez);

  world.camera(eyex, eyey, eyez, focusx, focusy, focusz, upx, upy, upz);


  move();
  //drawAxis();
  drawFloor(-2000, 2000, height, gridSize);            //floor
  drawFloor(-2000, 2000, height-gridSize*4, gridSize); //ceiling
  drawMap();

  int i = 0;
  while (i < objects.size()) {
    GameObject obj = objects.get(i);
    obj.act();
    obj.show();
    if (obj.lives == 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
  world.endDraw();
  image(world, 0, 0);
  HUD.beginDraw();
  HUD.clear();
  drawCrosshair();
  drawMiniMap();

  HUD.endDraw();
  image(HUD, 0, 0);
  
  
  if(pkey && timer >= 15){
     
    mode = PAUSE;
   timer = 0;
  }
  timer++;
  
  
  
  
    //  int i = 0;
    //while (i < objects.size() ) {
    //  GameObject myObj = objects.get(i);
    //  if (myObj instanceof Snowman) {
    //    if (dist(loc.x, location.y, myObj.location.x, myObj.location.y) <= myObj.size) {
    //      lives--;
    //  fill(255, 0, 0);
    //  ellipse(location.x, location.y, size/2, size/2);

    //      collisionTimer = 0;
    //    }
    //  }
    //  i++;
    //}
  
  
}

void gameClicks() {
}
