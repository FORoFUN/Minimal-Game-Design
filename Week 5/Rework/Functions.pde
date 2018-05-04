//functions
void collision_C(){
  for (int i = 0; i < counter; i += 1){
    if (CArray[i] != null){
      if (CArray[i].hit == 0){
        //if (player.x - player.size/2 == CArray[i].x + CArray[i].size/2
        //|| player.x + player.size/2 == CArray[i].x - CArray[i].size/2
        //|| player.y - player.size/2 == CArray[i].y + CArray[i].size/2
        //|| player.y + player.size/2 == CArray[i].y - CArray[i].size/2){
        if (dist(player.x,player.y,CArray[i].x,CArray[i].y) < player.size/2 + CArray[i].size/2){
          CArray[i].hit = 1;
          if (gameScreen == 2){
            if (player.speed > 1){
              player.speed -= 0.25;
            }
            player.size += 1.25;
          }
          else{
            player.size += 7.5;
          }
        }
      }
    }
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
  if (millis() > lastcheck_c + interval_c){
    lastcheck_c = millis();
    if (gameScreen == 1){
      if (player.y < height/2){
        CArray[counter] = new Circle(random(width),random(450),random(50,205));
      }
      else if (player.y > height/2){
        CArray[counter] = new Circle(random(width),random(200,425),random(50,205));
      }
    }
    else if (gameScreen == 2){
      CArray[counter] = new Circle(random(500),random(500), random(50,205));
    }
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

void generateSquare(){
    if (millis() > lastcheck_s + interval_s && player.size >= 27.5){
      lastcheck_s = millis();
      float away_x = random(-200,200);
      float away_y = random(-225,225);
      SArray[lost] = new Square(player.x+away_x,player.y+away_y,w,h);
      SArray[lost].distance = dist(player.x,player.y,SArray[lost].x,SArray[lost].y);
      lost += 1;
      player.size -= 7.5;
      if (lost >= 50){
        lost = 0;
      }
    }
}

void drawSquare(){
  for (int i = 0; i < lost; i += 1){
    if (SArray[i] != null){
      if (SArray[i].hit == 0){
        SArray[i].display();
      }
    }
  }
  player.display();
  player.circleMove();
  applyMove();
}

void applyMove(){
  for (int i = 0; i < lost; i += 1){
    if (SArray[i] != null){
      if (SArray[i].hit == 0){
        if (SArray[i].distance < dist(player.x,player.y,SArray[i].x,SArray[i].y)){
          if (SArray[i].x >= player.x){
            SArray[i].x += 1;
          }
          if (SArray[i].x < player.x){
            SArray[i].x -= 1;
          }
          if (SArray[i].y >= player.y){
            SArray[i].y += 1;
          }
          if (SArray[i].y < player.y){
            SArray[i].y -= 1;
          }
        }
        else{
          SArray[i].distance = dist(player.x,player.y,SArray[i].x,SArray[i].y);
        }
      }
    }
  }
}

void collision_S(){
    for (int i = 0; i < lost; i += 1){
      if (SArray[i] != null){
        if (SArray[i].hit == 0){
        //if (player.x - player.size/2 == CArray[i].x + CArray[i].size/2
        //|| player.x + player.size/2 == CArray[i].x - CArray[i].size/2
        //|| player.y - player.size/2 == CArray[i].y + CArray[i].size/2
        //|| player.y + player.size/2 == CArray[i].y - CArray[i].size/2){
          if (dist(player.x,player.y,SArray[i].x,SArray[i].y) < player.size/2 + 30){
            SArray[i].hit = 1;
            player.size += 7.5;
            player.speed += 0.25;
            secondL += 1;
          }
        }
      }
    }
 }
  

void keepInScreen(){
  if (gameScreen == 1){
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
  }
  else if (gameScreen == 2){
    if (player.y <= 0){
      player.y = 0;
    }
    else if (player.y >= height){
      player.y = height;
    }
  }
  if (player.x <= 0){
    player.x = 0;
  }
  else if (player.x >= width){
    player.x = width;
  }
}