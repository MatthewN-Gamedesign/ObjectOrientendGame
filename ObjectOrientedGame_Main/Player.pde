class Player {
 PImage Guy;
 PVector position;
 PVector velocity;
 float tempSpeedX;
 float tempSpeedY;
  
  Player() {
    position = new PVector(width/2,height/2);
    velocity = new PVector(tempSpeedX, tempSpeedY);
  }
  
  void display() {
    imageMode(CENTER);
    Guy = loadImage("Guy1.png");
    image(Guy, position.x, position.y);
  }
  
  void move(){
    position.add(velocity);
    if (keyPressed) {
  if (key == 'w' || key =='W'){
   // velocity.x = 0;
    velocity.y = -1;
    
  } if (key == 'a' || key == 'A'){
    velocity.x = -1;
    //velocity.y = 0;
    
  } if (key =='s') {
   // velocity.x = 0;
    velocity.y = 1;
    
  } if (key =='d') {
    velocity.x = 1;
    //velocity.y = 0;
    
  } //if (key == 'w' && key == 'a') {
   // velocity.x = -1;
    //velocity.y = -1;
 // }
  
  }
  if (keyPressed == false) {
    velocity.x = 0;
    velocity.y = 0;
  }

 }

  }
