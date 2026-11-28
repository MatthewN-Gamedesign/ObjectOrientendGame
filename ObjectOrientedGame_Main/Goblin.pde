class Goblin {
 PImage Goblin;
 PVector position;
 PVector velocity;
 
 float size;
  Goblin(){
    position = new PVector (0, random(100,300));
    
    velocity = new PVector(random(1,1.5),0);
    
    size = 15;
  }
  void display() {
    imageMode(CENTER);
    Goblin = loadImage("Goblins1.png");
    image(Goblin, position.x, position.y);
  }
  
  void move(){
    position.add(velocity);
    
  }
  boolean intersection(Player b) {
   
   float distance = dist(position.x, position.y, b.position.x, b.position.y);
   
   if (distance < size) {
    return true;
   } else {
     return false;
   }
 }
 
 boolean end() {
   if (position.x > 400) {
     velocity.x =  0;
     return true;
   } else {
    return false; 
   }
 }
}
