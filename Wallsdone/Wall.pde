class Wall extends Tile {

  Wall(float xpos, float ypos, float _Thewidth, float _Theheight) {

    super(xpos, ypos, _Thewidth, _Theheight);
  
}


  void display() {


    stroke(100);
    //fill(objectFill);
    rect(x, y, Thewidth, Theheight);
  }
  
   void alterPosition(float xpos) {

    x = xpos;
   
  }
}