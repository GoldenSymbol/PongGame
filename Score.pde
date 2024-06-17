class Score {
  int scoreR;
  int scoreL;
  
  Score() { // constructor
    scoreR = 0;
    scoreL = 0;
  }
  
  void display() { // creat score
    textSize(96);
    text(scoreL, 240, 80);
    text(scoreR, 315, 80);
  }
}
