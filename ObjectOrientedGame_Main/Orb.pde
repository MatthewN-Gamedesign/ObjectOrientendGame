class Orb {
 PImage Orb;
 PVector position;
 PVector velocity;
 PVector spin;
  Orb() {
    position = new PVector (width/2, height/2 + 30);
    
    velocity = new PVector(1,0);
    
    spin = new PVector(10, 20);
  }
  void display() {
    imageMode(CENTER);
    Orb = loadImage("Orb1.png");
    image(Orb, position.x, position.y);
  }
  void move(){
    position.add(velocity);
    
    spin.rotate(90);
  }
}
