class Tile {

  //int xPosition;
  //int yPosition;
  //int objectWidth;
  //int objectHeight;

  //color objectFill;

  float x;
  float y;
  float Thewidth;     // the Circle radius
  float Theheight;     // the Circle radius

  Tile(float xpos, float ypos, float _Thewidth, float _Theheight) {

    x = xpos;
    y = ypos;
    Thewidth = _Thewidth;
    Theheight = _Theheight;
  }

  void display() {

    ellipseMode(CENTER);

    stroke(100);
    //fill(objectFill);
    ellipse(x, y, Thewidth, Theheight);
  }

  void alterPosition(float xpos, float ypos) {

    x = xpos;
    y = ypos;
  }
}