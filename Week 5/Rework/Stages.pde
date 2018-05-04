//Stages
void initScreen(){
  background(0);
  textAlign(CENTER);
  textSize(26);
  text("Gummy Balls: Make Friends... \n and Keep them \n\n arrow keys to control", height/2,width/3);
  textSize(13);
  text("Press TAB to start", height/2, width/2);
}

void stage_one(){
  background(255);
  textAlign(LEFT);
  textSize(13);
  text((total-(millis()-time))/1000, 0, 30);
  generateBall();
  drawBall();
  applyGravity();
  keepInScreen();
  collision_C();
  if (millis() - time >= total){
    gameScreen = 2;
    time = millis();
    firstL = round((player.size - 20) / 7.5);
    background(0);
    lastcheck_s = millis();
    lastcheck_c = millis();
    gameScreen = 4;
  }
}

void stage_two(){
  interval_c = 1000;
  background(255);
  textAlign(LEFT);
  textSize(13);
  text((total-(millis()-time))/1000, 0, 30);
  generateBall();
  generateSquare();
  drawBall();
  drawSquare();
  keepInScreen();
  collision_S();
  collision_C();
  if (millis() - time >= total){
    gameScreen = 3;
  }
}

void pause(){
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(20);
  text("Your friends are leaving you now! \n Do not let them go~", height/2,width/3);
  pause -= 1;
  if (pause == 0){
    gameScreen = 2;
  }
}
  
void EndingScreen(){
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(20);
  text("You have made this many friends:" + int(firstL), height/2,width/3);
  textSize(26);
  text("\n\nYou kept this many friends:" + int(secondL), height/2,width/3);
  text("Press TAB to restart",height/2, 2*width/3);
}