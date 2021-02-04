void button(int x, int y, int w, int h, String label) {
  //tactile
  if (touchingMouse(x, y, w, h)) {
    stroke(0, 0, 255);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(1);
  }
  //drawing the button
  fill(255);
  rect(x, y, w, h);
  fill(0);
  textSize(50);
  textAlign(CENTER);
  text(label, x, y);
}




boolean touchingMouse(int x, int y, int w, int h) {
  if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
    return true;
  } else {
    return false;
  }
}
