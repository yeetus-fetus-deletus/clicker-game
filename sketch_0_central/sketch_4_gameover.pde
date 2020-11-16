void gameOver() {
  background(255);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(70);
  text("GAME OVER", 400, 200);
  textSize(50);
  text("PRESS ANYWHERE TO RESTART", 400, 400);
}

void reset() {
  score = 0;
  lives = 3;
  
}

void gameOverClicks() {
  mode = INTRO;
  reset();
}
