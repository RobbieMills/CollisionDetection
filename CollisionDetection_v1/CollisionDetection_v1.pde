ArrayList<Zombie> listOfZombies;

void setup() {
  
  size(1000, 700);
  
  listOfZombies = new ArrayList<Zombie>();
  
  for(int zombieCount = 0; zombieCount < 40; zombieCount++){
   
     Zombie tempZombieObject =  new Zombie (int(random(width - 50)), 
                                   int(random(height - 50)), 
                                   50, 
                                   50, 
                                   color(0, 160, 0));
                                   
    // CHECK IF THE ZOMBIES ARE OVERLAPPING
    
    for(int checkCollisions = 0; checkCollisions < zombieCount; checkCollisions++){
      
      while(/* there is a collision */){
        
        tempZombieObject.alterPosition(int(random(width - 50)), int(random(height - 50)));
        
      }
       
    }
    
    // Re-roll the width and height
    
    // Re-check 
    
    listOfZombies.add(tempZombieObject);
    
    
  }
  

}



void draw() {
  
  background(255);
  
  for(int i = 0; i < listOfZombies.size(); i++){
   
     Zombie referenceToAZombieInOurList = listOfZombies.get(i);
     
     referenceToAZombieInOurList.display();
  }
}