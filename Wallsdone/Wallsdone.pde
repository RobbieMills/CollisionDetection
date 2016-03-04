//http://www.jeffreythompson.org/collision-detection/object_oriented_collision.php //<>//

ArrayList<Zombie> listOfZombies;
ArrayList<Wall> listOfWalls;

boolean AreZombiesOverlappingWithEachother = false;

boolean AreWallsOverlappingWithEachother = false;

float anewnumber = random(0, 500);
float anothernewnumber = random(25, width-25);

void setup() {
  
  size(1000, 700);

  ellipseMode(CENTER);

  listOfZombies = new ArrayList<Zombie>();
  listOfWalls = new ArrayList<Wall>();

  for (int wallCount = 0; wallCount < 5; wallCount++) {

    Wall tempWallObject =
      new Wall (random(25, width-25), 0, 25, height);

    for (int checkCollisions = 0; checkCollisions < wallCount; checkCollisions++) {

      Wall FirstReferenceToAWallInOurList = listOfWalls.get(checkCollisions);

      if (dist(tempWallObject.x, tempWallObject.y, 
        FirstReferenceToAWallInOurList.x, FirstReferenceToAWallInOurList.y)
        < tempWallObject.Thewidth/2 + FirstReferenceToAWallInOurList.Thewidth/2) {
        AreWallsOverlappingWithEachother = true;
      } else {
        AreWallsOverlappingWithEachother = false;
      }

      while (AreWallsOverlappingWithEachother) {

        // Re-roll the width and height
        tempWallObject.alterPosition(anothernewnumber);
        AreWallsOverlappingWithEachother = false;
      }
    }

    // Re-check 
    listOfWalls.add(tempWallObject);
  }

  ////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////

  for (int zombieCount = 0; zombieCount < 60; zombieCount++) {

    Zombie tempZombieObject =
      new Zombie (random(50, width-50), //xpos,ypos,radius
      random(50, height-50), 75, 75);

    for (int checkCollisions = 0; checkCollisions < zombieCount; checkCollisions++) {

      Zombie FirstReferenceToAZombieInOurList = listOfZombies.get(checkCollisions);

      //if the distance between the centre points of both circles is
      //less than the radius of the two circles added together, then
      //the circles must be overlapping.

      if (dist(tempZombieObject.x, tempZombieObject.y, 
        FirstReferenceToAZombieInOurList.x, FirstReferenceToAZombieInOurList.y)
        < tempZombieObject.Thewidth/2 + FirstReferenceToAZombieInOurList.Thewidth/2) {
        AreZombiesOverlappingWithEachother = true;
      } else {
        AreZombiesOverlappingWithEachother = false;
      }

      while (AreZombiesOverlappingWithEachother) {

        // Re-roll the width and height
        tempZombieObject.alterPosition(anewnumber, anewnumber);
        AreZombiesOverlappingWithEachother = false;
      }
    }

    // Re-check 
    listOfZombies.add(tempZombieObject);
  }
}

void draw() {

  background(255);

  //Draws all of the zombie objects contained in listofZombies ArrayList

  for (int index = 0; index < listOfZombies.size(); index++) {

    Zombie referenceToAZombieInOurList = listOfZombies.get(index);

    referenceToAZombieInOurList.display();
  }

  //Draws all of the zombie objects contained in listofWalls ArrayList

  for (int index = 0; index < listOfWalls.size(); index++) {

    Wall referenceToAWallInOurList = listOfWalls.get(index);

    referenceToAWallInOurList.display();
  }
}