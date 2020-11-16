void pause() {
  fill(150);
  rect(775, 25, 30, 30);
  fill(0);
  triangle(767, 15, 767, 35, 783, 25);
}

void pauseClicks() {
  if(mouseX > 760 && mouseX < 790 && mouseY > 10 && mouseY < 40) {
    mode = GAME;
  }
}
