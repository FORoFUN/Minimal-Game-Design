//Learning Processing
//Screen Control (rooms), variables(circle information), score?
//Screen Control: Initial, Game, Ending
//Windows (rooms)

int gameScreen = 0;

void draw(){
  if (gameScreen == 0){
    initScreen();
  }
  else if(gameScreen == 1){
    gameScreen();
  }
  else if (gameScreen == 2){
    EndingScreen();
  }
}
//Screen size
void setup(){
  size(500,500);
  smooth();
  noStroke();
  player = new Circle(height/4,width/5,color(255,215,0));
  lastcheck = millis();
  interval = 750; //0.75 secs
  time = millis();
}

void initScreen(){
  background(0);
  textAlign(CENTER);
  textSize(26);
  text("Gummy Balls: Finding Friends", height/2,width/3);
  textSize(13);
  text("Press TAB to start", height/2, width/2);
}

Circle [] CArray = new Circle[50]; //generate
int counter = 0;
Circle player;
float lastcheck;
float interval;
float time;
float total = 20000; //15 secs

float gravity = 1;
float speedVert = 0;
float friction = 0.175;
float midAir = 0.0005;

void gameScreen(){
  background(255);
  textAlign(LEFT);
  textSize(13);
  text((total-(millis()-time))/1000, 0, 30);
  generateBall();
  drawBall();
  applyGravity();
  keepInScreen();
  collision();
  if (millis() - time >= total){
    gameScreen = 2;
  }
}

void drawBall(){
  for (int i = 0; i < counter; i += 1){
    if (CArray[i] != null){
      if (CArray[i].hit == 0){
        CArray[i].display();
      }
    }
  }
  player.display();
  player.circleMove();
}

void generateBall(){
  if (millis() > lastcheck + interval){
    lastcheck = millis();
    CArray[counter] = new Circle(random(width),random(450),random(50,205));
    counter += 1;
    if (counter >= 50){
      counter = 0;
    }
  }
}  

void applyGravity(){
  speedVert += gravity;
  player.y += speedVert;
  speedVert -= (speedVert * midAir);
}

void keepInScreen(){
  if (player.y + (player.size/2) >height){
    player.y  = height - (player.size/2);
    speedVert *= -1;
    speedVert -= (speedVert * friction);
  }
  if (player.y - (player.size/2) < 0){
    player.y  = height + (player.size/2);
    speedVert *= -1;
    speedVert -= (speedVert * friction);
  }
  if (player.x <= 0){
    player.x = 0;
  }
  if (player.x >= width){
    player.x = width;
  }
  
}
 
void collision(){
  for (int i = 0; i < counter; i += 1){
    if (CArray[i] != null){
      if (CArray[i].hit == 0){
        //if (player.x - player.size/2 == CArray[i].x + CArray[i].size/2
        //|| player.x + player.size/2 == CArray[i].x - CArray[i].size/2
        //|| player.y - player.size/2 == CArray[i].y + CArray[i].size/2
        //|| player.y + player.size/2 == CArray[i].y - CArray[i].size/2){
        if (dist(player.x,player.y,CArray[i].x,CArray[i].y) < player.size/2 + CArray[i].size/2){
          CArray[i].hit = 1;
          player.size += 7.5;
        }
      }
    }
  }
}
  

void EndingScreen(){
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(20);
  text("You have made this many friends:", height/2,width/3);
  textSize(26);
  text(int((player.size - 20)/7.5), height/2, width/2);
  text("Press TAB to restart",height/2, 2*width/3);
}

public void keyPressed(){
  if (gameScreen == 0 && key == TAB){
    startGame();
  }
  if (gameScreen == 2 && key == TAB){
    restartGame();
    time = millis();
    player.size = 20;
  }
}

void startGame(){
  gameScreen = 1;
}

void restartGame(){
  gameScreen = 0;
}

class Circle {
  float x,y,c;
  float size = 20;
  int hit = 0;
  Circle(float x, float y, float c){
    this.x = x;
    this.y = y;
    this.c = c;
  }
  
  void display(){
    fill(c);
    ellipse(x,y,size,size);
  }
  
  void circleMove(){
    if (keyPressed == true){
      if (keyCode == LEFT){
        x -= 5;
      }
      if (keyCode == RIGHT){
        x += 5;
      }
      if (y + (size/2) == height && abs(speedVert) <= 1){
        if (keyCode == UP){
          y -= 500 - size*3;
        }
        if (keyCode == DOWN){
          if (size > 20){
            size -= 7.5;
          }
        }
      }
    }
  }
}