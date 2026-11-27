class Goblin {
 PImage Goblin;
 PVector position;
 PVector velocity;
  Goblin(){
    position = new PVector (0, random(100,300));
    
    velocity = new PVector(1,0);
  }
  void display() {
    imageMode(CENTER);
    Goblin = loadImage("Goblins1.png");
    image(Goblin, position.x, position.y);
  }
  
  void move(){
    position.add(velocity);
    
  }
}
