void gameover() {
  background(255, 0, 0);
  textAlign(CENTER);
  textFont(font2);
    textSize(150);
  text("GAMEOVER", width/2, 300);
  textFont(font);
  textSize(25);
  button(width/2 + 250, 600, 400, 100, "PLAY AGAIN");
  button(width/2 - 300, 600, 300, 100, "Quit");
}

void gameoverClicks() {

  if (touchingMouse(width/2 + 250, 600, 400, 100)) {
    mode = INTRO;
    setup();
  }
  if (touchingMouse(width/2 - 300, 600, 300, 100)) {
    exit();
  }
}
