

 int wallX = 100;
 int wallY = 100;
 int wallWidth = 50;
 int wallHeight = 50;
 
 int zombieX = 210;
 int zombieY = 180;
 int zombieWidth = 50;
 int zombieHeight = 50;
 
 
 if(  (zombieX + zombieWidth >= wallX)
 
   && (zombieX < wallX + wallWidth)
   
   && (zombieY + zombieHeight >= wallY)
   
   && (zombieY < wallY + wallHeight)){
  
   println("The objects are overlapping");
 }