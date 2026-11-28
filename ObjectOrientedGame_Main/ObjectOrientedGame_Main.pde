Player player;
ArrayList<Goblin> goblin;
//float speedX;
//float speedY;\
boolean game = true;

void setup() {
 size(400,400);
 player = new Player();
 goblin = new ArrayList<Goblin>();
}

void draw() {
  if (game == true) {
    frameRate(60);
 background(255,230,137); 
 
 
 //Level
 fill(123,7,227);
 rect(0,0, 400, 100);
 rect(0,300, 400, 100);
 player.display();
 player.move();
 if (goblin.size()<30) {
   if (frameCount % 10 == 0) {
    Goblin a = new Goblin();
    goblin.add(a);
   }
 }
 for ( int i = 0; i < goblin.size(); i++) {
    goblin.get(i).display();
    goblin.get(i).move();
 }
  } 
  if (game == false) {
    background(123,7,227);
    frameRate(1);
    game = true;
  }
 
}

void keyPressed() {
  if (key == 'r') {
    game = false;
    goblin.clear();
  }
}
