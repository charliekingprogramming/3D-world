void drawMap() {
  for (int x = 0; x < map.width; x++) {
    for (int y = 0; y < map.height; y++) {
      color c = map.get(x, y);
      if (c == dullBlue) {
        texturedCube(x*gridSize - 2000, height - gridSize, y*gridSize - 2000, crimson_side, gridSize);
        texturedCube(x*gridSize - 2000, height - gridSize*2, y*gridSize - 2000, crimson_side, gridSize);
        texturedCube(x*gridSize - 2000, height - gridSize*3, y*gridSize - 2000, crimson_side, gridSize);
      }
      if (c == black) {
        texturedCube(x*gridSize - 2000, height - gridSize, y*gridSize - 2000, diamond, gridSize);
        texturedCube(x*gridSize - 2000, height - gridSize*2, y*gridSize - 2000, diamond, gridSize);
        texturedCube(x*gridSize - 2000, height - gridSize*3, y*gridSize - 2000, diamond, gridSize);
      }
    }
  }
}



//void drawAxis() {
//}

void drawFloor(int start, int end, int level, int gap) {
  //line(x1, y1, z1, x2, y2, z2); 
  stroke(255);
  strokeWeight(1);

  int x = start;
  int z = start;
  while (z < end) {
    texturedCube(x, level, z, diamond, gap);
    x = x + gap;
    if (x >= end) {
      x = start;
      z = z + gap;
    }
  }
}
