

class Tile {

  int xPosition;
  int yPosition;
  int objectWidth;
  int objectHeight;
  
  color objectFill;

  Tile(int newX, int newY, int newWidth, int newHeight, color newFill) {

    xPosition = newX;
    yPosition = newY;
    objectWidth = newWidth;
    objectHeight = newHeight;
    objectFill = newFill;
  }
  
  void display(){
    
    stroke(100);
    fill(objectFill);
    rect(xPosition, yPosition, objectWidth, objectHeight);
    
  }
  
  void alterPosition(int newX, int newY){
    
    xPosition = newX;
    yPosition = newY;
  }
  

}