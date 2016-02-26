

class Tile {

  //int xPosition;
  //int yPosition;
  //int objectWidth;
  //int objectHeight;

  //color objectFill;

  float x;
  float y;
  float r;     // the Circle radius

  Tile(float xpos, float ypos, float radius) {

    x = xpos;
    y = ypos;
    r = radius;
  }

  void display() {

    stroke(100);
    //fill(objectFill);
    ellipse(x,y,r*2, r*2);
  }

  void alterPosition(float xpos, float ypos) {

   x = xpos;
   y = ypos;
  }
}