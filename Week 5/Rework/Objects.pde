//Objects
class Circle {
  float x,y,c;
  float size = 20;
  int hit = 0;
  int speed = 6;
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
    if (gameScreen == 1){
    if (keyPressed == true){
      if (left){
        x -= speed;
      }
      if (right){
        x += speed;
      }
      if (y + (size/2) == height && abs(speedVert) <= 5){
        if (up){
          y -= 500 - size*2.9;
        }
        if (down){
          if (size > 20){
            size -= 7.5;
          }
        }
      }
    }
    }
    if (gameScreen == 2){
      if (keyPressed == true){
        if (left){
          x -= speed;
        }
        if (right){
          x += speed;
        }
        if (up){
          y -= speed;
        }
        if (down){
          y += speed;
        }
      }
    }
  }
}

class Square {
  float x,y,w,h;
  int hit = 0;
  float distance;
  Square(float x, float y, float w, float h){
    this.x = x;
    this.y = y;
    this.w = w;    
    this.h = h;
  }
  void display(){
    fill(204, 102, 0);
    rect(x,y,w,h);
  }
}