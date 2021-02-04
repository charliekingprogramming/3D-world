int threshold;

void move() {

  if (mode ==GAME || threshold == 0) {

    if (akey && canMoveLeft() && shiftkey) {
      eyex -=  cos(leftRightAngle + PI/2)*20;
      eyez -=  sin(leftRightAngle + PI/2)*20;
    } else if (akey && canMoveLeft()) {
      eyex -=  cos(leftRightAngle + PI/2)*10;
      eyez -=  sin(leftRightAngle + PI/2)*10;
    }
    if (dkey && canMoveRight() && shiftkey) {
      eyex +=  cos(leftRightAngle + PI/2)*20;
      eyez +=  sin(leftRightAngle + PI/2)*20;
    } else if (dkey && canMoveRight()) {
      eyex +=  cos(leftRightAngle + PI/2)*10;
      eyez +=  sin(leftRightAngle + PI/2)*10;
    }
    if (wkey && canMoveForward() && shiftkey) {
      eyex +=  cos(leftRightAngle)*20; 
      eyez +=  sin(leftRightAngle)*20;
    } else if (wkey && canMoveForward() ) {
      eyex +=  cos(leftRightAngle)*10; //same thing as: eyex = eyex + cos(leftRightAngle)*10;
      eyez +=  sin(leftRightAngle)*10;
    } 
        if (skey && canMoveBackward() && shiftkey) {
      eyex -=  cos(leftRightAngle)*20; //same thing as: eyex = eyex + cos(leftRightAngle)*10;
      eyez -=  sin(leftRightAngle)*20;
    } else if (skey && canMoveBackward()) {
      eyex -=  cos(leftRightAngle)*10; //same thing as: eyex = eyex + cos(leftRightAngle)*10;
      eyez -=  sin(leftRightAngle)*10;
    }

    focusx = eyex + cos(leftRightAngle)*300;
    focusy = eyey  +tan(upDownAngle)*300;
    focusz = eyez + sin(leftRightAngle)*300;

    if (mouseX > width-2) rbt.mouseMove(3, mouseY);
    if (mouseX < 2) rbt.mouseMove(width-3, mouseY);



    leftRightAngle = leftRightAngle + (mouseX - pmouseX)*0.01;
    upDownAngle = upDownAngle + (mouseY - pmouseY)*0.01;

    if (upDownAngle > PI/2.5) upDownAngle = PI/2.5;
    if (upDownAngle < -PI/2.5) upDownAngle = -PI/2.5;


    threshold = 1;
  }
}




boolean canMoveForward() {
  float fwdx, fwdy, fwdz;
  float leftx, lefty, leftz;
  float rightx, righty, rightz;
  int mapx, mapy;
  int mapx2, mapy2;
  int mapx3, mapy3;

  fwdx = eyex + cos(leftRightAngle)*200;
  fwdy = eyey;
  fwdz = eyez + sin(leftRightAngle)*200;

  leftx = eyex + cos(leftRightAngle - radians(20))*200;
  lefty = eyey;
  leftz = eyez + sin(leftRightAngle - radians(20))*200;

  rightx = eyex + cos(leftRightAngle + radians(20))*200;
  righty = eyey;
  rightz = eyez + sin(leftRightAngle + radians(20))*200;

  mapx = int(fwdx+2000) / gridSize;
  mapy = int(fwdz+2000) / gridSize;

  mapx2 = int(leftx+2000) / gridSize;
  mapy2 = int(leftz+2000) / gridSize;

  mapx3 = int(rightx+2000) / gridSize;
  mapy3 = int(rightz+2000) / gridSize;

  if (map.get(mapx, mapy) == white && map.get(mapx2, mapy2) == white && map.get(mapx3, mapy3) == white) {
    return true;
    //} else { 
    //  if (map.get(mapx2, mapy2) == white) {
    //    return true;
  } else {

    return false;
  }
}
//}

boolean canMoveLeft() {
  float fwdx, fwdy, fwdz;
  float leftx, lefty, leftz;
  float rightx, righty, rightz;
  int mapx, mapy;
  int mapx2, mapy2;
  int mapx3, mapy3;

  fwdx = eyex + cos(leftRightAngle + radians(270))*200;
  fwdy = eyey;
  fwdz = eyez + sin(leftRightAngle + radians(270))*200;

  leftx = eyex + cos(leftRightAngle + radians(250))*200;
  lefty = eyey;
  leftz = eyez + sin(leftRightAngle + radians(250))*200;

  rightx = eyex + cos(leftRightAngle + radians(290))*200;
  righty = eyey;
  rightz = eyez + sin(leftRightAngle + radians(290))*200;


  mapx = int(fwdx+2000) / gridSize;
  mapy = int(fwdz+2000) / gridSize;

  mapx2 = int(leftx+2000) / gridSize;
  mapy2 = int(leftz+2000) / gridSize;

  mapx3 = int(rightx+2000) / gridSize;
  mapy3 = int(rightz+2000) / gridSize;


  if (map.get(mapx, mapy) == white && map.get(mapx2, mapy2) == white && map.get(mapx3, mapy3) == white) {
    return true;
  } else {
    return false;
  }
}

boolean canMoveRight() {
  float fwdx, fwdy, fwdz;
  float leftx, lefty, leftz;
  float rightx, righty, rightz;
  int mapx, mapy;
  int mapx2, mapy2;
  int mapx3, mapy3;

  fwdx = eyex + cos(leftRightAngle + radians(90))*200;
  fwdy = eyey;
  fwdz = eyez + sin(leftRightAngle + radians(90))*200;

  leftx = eyex + cos(leftRightAngle - radians(70))*200;
  lefty = eyey;
  leftz = eyez + sin(leftRightAngle - radians(70))*200;

  rightx = eyex + cos(leftRightAngle + radians(110))*200;
  righty = eyey;
  rightz = eyez + sin(leftRightAngle + radians(110))*200;


  mapx = int(fwdx+2000) / gridSize;
  mapy = int(fwdz+2000) / gridSize;

  mapx2 = int(leftx+2000) / gridSize;
  mapy2 = int(leftz+2000) / gridSize;

  mapx3 = int(rightx+2000) / gridSize;
  mapy3 = int(rightz+2000) / gridSize;


  if (map.get(mapx, mapy) == white && map.get(mapx2, mapy2) == white && map.get(mapx3, mapy3) == white) {
    return true;
  } else {
    return false;
  }
}

boolean canMoveBackward() {
  float fwdx, fwdy, fwdz;
  float leftx, lefty, leftz;
  float rightx, righty, rightz;
  int mapx, mapy;
  int mapx2, mapy2;
  int mapx3, mapy3;

  fwdx = eyex + cos(leftRightAngle + radians(180))*200;
  fwdy = eyey;
  fwdz = eyez + sin(leftRightAngle + radians(180))*200;

  leftx = eyex + cos(leftRightAngle - radians(160))*200;
  lefty = eyey;
  leftz = eyez + sin(leftRightAngle - radians(160))*200;

  rightx = eyex + cos(leftRightAngle + radians(190))*200;
  righty = eyey;
  rightz = eyez + sin(leftRightAngle + radians(190))*200;

  mapx = int(fwdx+2000) / gridSize;
  mapy = int(fwdz+2000) / gridSize;

  mapx2 = int(leftx+2000) / gridSize;
  mapy2 = int(leftz+2000) / gridSize;

  mapx3 = int(rightx+2000) / gridSize;
  mapy3 = int(rightz+2000) / gridSize;


  if (map.get(mapx, mapy) == white && map.get(mapx2, mapy2) == white && map.get(mapx3, mapy3) == white) {
    return true;
  } else {
    return false;
  }
}
