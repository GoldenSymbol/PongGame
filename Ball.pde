class Ball {
  float x;
  float y;
  float w;
  float h;
  float speedx;
  float speedy;
  int counter;
  
  
  Ball(){ // costructor
    x = width/2;
    y = height/2;
    w = 10;
    h = 10;
    speedx = 2*level;
    speedy = level;
    counter = 0;
  }
  
  void display(){ // creat ball
    ellipseMode(CENTER);
    noStroke();
    fill(255);
    rect(x, y, w, h);
  }  
  
  void move(RightPaddle pR, LeftPaddle pL){ // ball movement
    x += speedx;
    y += speedy;
    
    if (x+w >= pR.x && x <= pR.x+pR.w && y+w >= pR.y && y <= pR.y+pR.h){ // if ball hits right paddle
      speedx *= -1;
      counter++;
    }
    
    if (x+w >= pL.x && x <= pL.x+pL.w && y+w >= pL.y && y <= pL.y+pL.h){ // if ball hits left paddle
      speedx *=-1;
      counter++;
    }
    
    if (y <= 0 || y+h >= height) // if ball hits top or bottom
      speedy *= -1;
    
    if (x > width){ // if ball goes through right side
      x = width/2;
      score.scoreL++;     
    }
    
    if (x < 0){ // if ball goes through left side
      x = width/2;
      score.scoreR++;
    }
  }
}
