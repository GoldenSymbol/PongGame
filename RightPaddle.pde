class RightPaddle {
  float x;
  float y;
  float h;
  float w;
  
  RightPaddle() { // constructor
    w = 20;
    h = 120;
    x= width-3*w;
    y = height/2;
  }
  
  void display(){ // creat right paddle
    noStroke();
    fill(255);
    rect(x, y, w, h);
  }
  
  void move(){ // right paddle movement
    if (keyPressed){
      if (key == CODED){
        if (keyCode == UP)
          y -= level*1.5;
        if (keyCode == DOWN)
          y += level*1.5;
      }
     y = constrain(y, 0, height-h);
    }
  }
}
