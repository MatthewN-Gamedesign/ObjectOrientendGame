Player player;
ArrayList<Goblin> goblin;
//float speedX;
//float speedY;\
boolean game = true;
//float timeM;
//float timeS;

void setup() {
 size(400,400);
 player = new Player();
 goblin = new ArrayList<Goblin>();
}

void draw() {
  if (game == true) {
   //timeM = millis()/60000;
    //timeS = millis()/1000;
    
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
    if (goblin.get(i).end()) {
      goblin.remove(i);
    }
    if (goblin.get(i).intersection(player)) {
   game = false;
 }
 }
 fill(255);
 text(millis()/60000+ ":" + millis()/1000, 50, 40);
  } 
  if (game == false) {
    background(123,7,227);
    goblin.clear();
    frameRate(1);
    game = true;
  }
 
}

void keyPressed() {
  if (key == 'r') {
    game = false;
  }
}
