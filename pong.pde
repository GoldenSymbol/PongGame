Ball ball;
Net net;
Score score;
LeftPaddle paddleL;
RightPaddle paddleR;
int level = 2;

void setup(){
  size(600, 400); //scren size
  //initialize
  ball = new Ball();
  net = new Net();
  score = new Score();
  paddleL = new LeftPaddle();
  paddleR = new RightPaddle();
}

void draw(){
  background(0); // background color
  score.display();
  net.display();
  ball.display();
  ball.move(paddleR, paddleL);
  paddleL.display();
  paddleL.move();
  paddleR.display();
  paddleR.move();
}
