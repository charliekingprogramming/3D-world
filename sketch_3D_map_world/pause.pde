float wid, hei, wid2, hei2;


void pause() {
  background(0);

  textFont(font);
  textSize(20);
  button(width/2 + 300, 600, 300, 100, "RESTART");
  button(width/2 - 300, 600, 300, 100, "Quit");



  tint(255, transparency2);
  image(greenguy, wid, hei, 200, 250);
  noTint();

  fill(255);
  textFont(font);
  textSize(40);
  textAlign(CENTER);
  text("Pause", width/2, height/4);   


  wid = wid + wid2;
  hei = hei + hei2;

  if (wid >= width - 200 ) {
    wid2 = -wid2;
  }
  if (wid <= 0) {
    wid2 = -wid2;
  }
  if (hei >= height - 250 ) {
    hei2 = -hei2;
  }
  if (hei <= 0) {
    hei2 = -hei2;
  }




  transparency2 = transparency2 + 5;
  if (transparency2 >=254) {
    transparency2 = 255;
  }

  if (pkey && timer >= 15) {
    mode = GAME;
    timer = 0;
  }
  timer++;
}

void pauseClicks() {
  if (touchingMouse(width/2 + 300, 600, 300, 100)) {
    mode = INTRO;
    setup();
  }
  if (touchingMouse(width/2 - 300, 600, 300, 100)) {
    exit();
  }
}
