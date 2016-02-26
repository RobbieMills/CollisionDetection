//http://www.jeffreythompson.org/collision-detection/object_oriented_collision.php //<>//

ArrayList<Zombie> listOfZombies;

boolean AreTheyOverlapping = false;

void setup() {

  size(1000, 700);

  listOfZombies = new ArrayList<Zombie>();

  for (int zombieCount = 0; zombieCount < 5; zombieCount++) {

    Zombie tempZombieObject =
      new Zombie (random(50, width-50), //xpos,ypos,radius
      random(50, height-50), 75);



    // CHECK IF THE ZOMBIES ARE OVERLAPPING

    for (int checkCollisions = 0; checkCollisions < zombieCount; checkCollisions++) {

      Zombie FirstReferenceToAZombieInOurList = listOfZombies.get(checkCollisions);

      //if the distance between the centre points of both circles is
      //less than the radius of the two circles added together, then
      //the circles must be overlapping.

      if (dist(tempZombieObject.x, tempZombieObject.y, 
        FirstReferenceToAZombieInOurList.x, FirstReferenceToAZombieInOurList.y)
        < tempZombieObject.r + FirstReferenceToAZombieInOurList.r) {
        AreTheyOverlapping = true;
      } else {
        AreTheyOverlapping = false;
      }

      //while(/* there is a collision */){

      // tempZombieObject.alterPosition(int(random(width - 50)), int(random(height - 50)));

      //}


      while (AreTheyOverlapping) {
               
        //background(255, 0, 0);
        // Re-roll the width and height
        tempZombieObject.alterPosition(random(50, width-50), random(50, height-50));
        //setup();
        //draw();
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
}