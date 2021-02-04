//control shift r == presentation mode

import java.awt.Robot;

PImage stars;
PImage redplanet;
PFont font, font2;

ArrayList<PImage> gif;
int n = 0;

int mode;
final int INTRO = 0;
final int GAME  = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int WIN = 4;

//color pallette
color black = #000000;     // diamond
color  white = #FFFFFF;    // empty space
color dullBlue = #7092BE;  // crimson side

//textures
PImage diamond, dirt, grass_top, grass_side, furnace_end, furnace_side, furnace_front, crimson_top, crimson_bottom, crimson_side;

//Map variables
int gridSize;
PImage map;
PImage greenguy;

Robot rbt;


//camera variables
float eyex, eyey, eyez;  //camera position
float focusx, focusy, focusz; //point at which camera faces
float upx, upy, upz; //tilt axis

//keyboard variables
boolean wkey, akey, dkey, skey, pkey, ekey, spacekey, shiftkey;

//rotation variables
float leftRightAngle, upDownAngle;

//Game Objects
ArrayList<GameObject> objects;

//canvas
PGraphics world;
PGraphics HUD;

int timer;

void setup() {
  
  timer = 0;
  wid = width/2;
  hei = height/2;
  wid2 = 5;
  hei2 = 5;
  
    font = createFont("Starcraft Normal.ttf", 32);
    font2 = createFont("New Space.ttf", 32);

  stars = loadImage("frame_00_delay-0.04s.gif");
  redplanet = loadImage("redplanet.png");
  greenguy = loadImage("greenguy.png");

    gif = new ArrayList<PImage>(); 
    int i = 0;
    while (i < 50) {
      String zero = "";
      if (i< 10) zero = "0";
      gif.add(loadImage("frame_" + zero + i + "_delay-0.04s.gif"));
      i++;
    }
  transparency = 255;
  transparency2 = 0;
  t2 = -500;
  vw = 0;
  vw2 = 0;
  vh = 0;
  x = width/2;
  y = height/2;
  x2 = 175;
  y2 = 100;  
  R = 0;
  B = 0;
  G = 0;

  //create canvases
  world = createGraphics(width, height, P3D);
  HUD   = createGraphics(width, height, P2D);

  mode = INTRO;

  //create game object list
  objects = new ArrayList<GameObject>();

  diamond = loadImage("diamond.png");
  dirt    = loadImage("dirt.png");
  grass_top = loadImage("grass_top.png");
  grass_side = loadImage("grass_side.png");
  furnace_end = loadImage("furnace_end.png");
  furnace_front = loadImage("furnace_front.png");
  furnace_side = loadImage("furnace_side.png");
  crimson_side = loadImage("crimson_side.png");
  crimson_top = loadImage("crimson_top.png");
  crimson_bottom = loadImage("crimson_bottom.png");


  //noCursor();
  try {
    rbt = new Robot();
  } 
  catch(Exception e) {
    e.printStackTrace();
  }

  size(displayWidth, displayHeight, P2D);

  eyex = width/2;
  eyey = 9*height/10;
  eyez = height/2;


  upx = 0;
  upy = 1;
  upz = 0;

  //initialize map
  map = loadImage("map.png");
  gridSize = 100;
}

void draw() {

  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == WIN) {
    win();
  } else {

    println("ERROR! Mode = " + mode);
  }
}
