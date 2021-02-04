
void keyPressed() {
  if (key == 'w' || key == 'W') wkey = true;
  if (key == 'a' || key == 'A') akey = true;
  if (key == 's' || key == 'S') skey = true;
  if (key == 'd' || key == 'D') dkey = true;
  if (key == 'p' || key == 'P') pkey = true;  // for pause
  if (key == 'e' || key == 'E') ekey = true;  // for running
  if (key == CODED) {
    if (keyCode == SHIFT) shiftkey = true;
  }
  if (key == ' ') spacekey = true;
}


void keyReleased() {
  if (key == 'w' || key == 'W') wkey = false;
  if (key == 'a' || key == 'A') akey = false;
  if (key == 's' || key == 'S') skey = false;
  if (key == 'd' || key == 'D') dkey = false;
  if (key == 'p' || key == 'P') pkey = false;
  if (key == 'e' || key == 'E') ekey = false;  // for running
  if (key == CODED) {
    if (keyCode == SHIFT) shiftkey = false;
  }
  if (key == ' ') spacekey = false;
}
