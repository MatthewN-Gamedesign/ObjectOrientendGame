//This is main. add the work into a branch
Player player;
//float speedX;
//float speedY;

void setup() {
 size(400,400);
 player = new Player();
}

void draw() {
 background(255,230,137); 
 
 //Level
 fill(123,7,227);
 rect(0,0, 400, 100);
 rect(0,300, 400, 100);
 player.display();
 player.move();
}
