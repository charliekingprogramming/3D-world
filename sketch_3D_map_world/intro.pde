int x, y, x2, y2, vw, vw2, vh;
float R, B, G, t2;
int i2 = 0;
int transparency, transparency2;
//float lineWidth;

void intro() {



  if (vw > 1) {
    //  strokeWeight(50);
    //  line(lineWidth, 0, lineWidth, height);
    //lineWidth = random(0, width);
    //R = random(110, 200);
    //B = random(110, 200);
    //G = random(110, 200);
  }
  imageMode(CENTER);
  textSize(50);
  //background(R, G, B);

  image(stars, width/2, height/2, width, height);//falcon

  if (x2 > 176) {
    transparency2 = 0;
    transparency = transparency - 50;
    PImage frame = gif.get(n);
    image(frame, width/2, height/2, width, height);
    n++;
    if (n > 49) n = 0;
  }
rectMode(CENTER);
textAlign(CENTER);
tint(255, transparency);
  textFont(font);
  textSize(40);
  fill(255, transparency);
  text("Select World", width/2, 300);  
  
  textFont(font2);
  textSize(100);
  text("BLOCK UNIVERSE", width/2, 160);
  tint(255, transparency2);
  image(greenguy, width/2 -25, height/2 -15, 200, 250);
  noTint();
  tint(255, transparency);
  image(redplanet, width/2, height/2, 150, 150);
  noTint();

  if (dist(width/2, height/2, mouseX, mouseY) < 150/2) {
transparency2 = transparency2 + 10;
if(transparency2 >=254) {
  transparency2 = 255;
}
  } else {
    transparency2 = transparency2 - 10;
   if(transparency2 <= 0){
     transparency2 = 0;
   }
  }


  world.beginDraw();
  world.textureMode(NORMAL);
  world.background(0);

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
  tint(255, t2);
  image(world, x, y, x2, y2);
  noTint();
  //HUD.beginDraw();
  //HUD.clear();
  //drawCrosshair();
  //drawMiniMap();

  //HUD.endDraw();
  //image(HUD, x, y, x2, y2);

  x2 = x2 + vw + vw2;
  y2 = y2 + vh;
  t2 = t2 + vw;


  i2++;
  if (i2 >= 8) {
    vw =vw * 2;
    vh = vh * 2;
    i2 = 0;
  }

  if (x2 >= width) {
    vw = 0;
  }

  if (y2 >= height) {
    vh = 0;
  }

  if ( x2 >= width && y2 >= height) {
    mode = GAME;
  }
}



void introClicks() {
  if (dist(width/2, height/2, mouseX, mouseY) < 150) {
    vw = 1;
    vw2 = 5;
    vh = 1;
  }
}
