//Screen Control
void draw(){
  if (gameScreen == 0){
    initScreen();
  }
  else if(gameScreen == 1){
    stage_one();
  }  
  else if(gameScreen == 2){
    stage_two();
  }
  else if (gameScreen == 3){
    EndingScreen();
  }
  else if (gameScreen == 4){
    pause();
  }
}

void setup(){
  size(500,500);
  smooth();
  noStroke();
  player = new Circle(height/4,width/5,color(255,215,0));
  lastcheck_s = millis();
  time = millis();
}

public void keyPressed(){
  if (gameScreen == 0 && key == TAB){
    startGame();
  }
  if (gameScreen == 3 && key == TAB){
    restartGame();
    time = millis();
    player.size = 20;
    counter = 0;
    firstL = 0;
    lost = 0;
    secondL = 0;
    player.speed = 6;
  }
  if(key < 128) {keys[key] = true;}
   if(key == CODED) { 
     if(keyCode == UP) {
       up = true;}
     if(keyCode == DOWN) {
       down = true;}
     if(keyCode == LEFT) {
       left = true;}
     if(keyCode == RIGHT) {
       right = true;}
 }
}

void keyReleased() {
 if(key < 128) {keys[key] = false;}
 if(key == CODED) { 
   if(keyCode == UP) {
     up = false;}
   if(keyCode == DOWN) {
     down = false;}
   if(keyCode == LEFT) {
     left = false;}
   if(keyCode == RIGHT) {
     right = false;}
 }
}

void restartGame(){
  gameScreen = 0;
}
void startGame(){
  gameScreen = 1;
}