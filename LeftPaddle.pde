class LeftPaddle {
  float x;
  float y;
  float h;
  float w;
  
  LeftPaddle() { // constrctor
    w = 20;
    h = 120;
    x= 2*w;
    y = height/2;
  }
  
  void display(){ // craet left paddle 
    noStroke();
    fill(255);
    rect(x, y, w, h);
  }
  
  void move(){ // left paddle movement
    if (keyPressed){
      if (key == 'w' || key == 'W')
        y -= level*1.5;
      if (key == 's' || key == 'S')
        y += level*1.5;
    }
    y = constrain(y, 0, height-h);
  }
}
