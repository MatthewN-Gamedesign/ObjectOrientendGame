class Orb {
 PImage Orb;
 PVector position;
 PVector velocity;
  Orb() {
    position = new PVector (0, 10);
    
    velocity = new PVector(1,0);
  }
  void display() {
    imageMode(CENTER);
    Orb = loadImage("Orb1.png");
    image(Orb, position.x, position.y);
  }
  void move(){
    position.add(velocity);
    
  }
}
