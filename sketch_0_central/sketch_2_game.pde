void game() {
  background(0);
  strokeWeight(2);
  scoreA.play();
  clickA.play();
  
  //target
  fill(selectedColor);
  circle(x, y, d);
  
  
  //pause button
  fill(150);
  rect(775, 25, 30, 30);
  strokeWeight(5);
  line(770, 18, 770, 32);
  line(780, 18, 780, 32);
  strokeWeight(1);
  
  //score counter
  textSize(16);
  rect(50, 30, 80, 40);
  fill(0);
  text("Score: " + score, 50, 18);
  text("Lives: " + lives, 50, 38);
  
  //movement
  x = x + vx;
  y = y + vy;
  
  //bounce
  if(x < 50 || x > width-50) {
    vx = vx * -1;
  }
  if(y < 50 || y > height-50) {
    vy = vy * -1;
  }
}

void gameClicks() {
  if(dist(mouseX, mouseY, x, y) < 50) {
    clickA.pause();
    clickA.rewind();
    score = score + 10;
    clickA.play();
  } else {
    lives = lives - 1;
  }
  if(lives <= 0 || score >= 250) {
    mode = GAMEOVER;
    scoreA.pause();
    scoreA.rewind();
  }
  
  if(mouseX > 760 && mouseX < 790 && mouseY > 10 && mouseY < 40) {
    mode = PAUSE;
  }
}
