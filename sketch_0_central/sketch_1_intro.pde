void intro() {
  background(0, 110, 255);
  
  //title
  textSize(80);
  fill(0, 255, 0);
  text("CLICKER GAME", 400, 200);
  
  //start button
  fill(150);
  stroke(0);
  strokeWeight(3);
  tactileRect(300, 400-(75/2), 200, 75);
  rect(400, 400, 200, 75);
  strokeWeight(1);
  textSize(40);
  fill(0);
  text("START", 400, 400);
  
  //options button
  fill(150);
  stroke(0);
  strokeWeight(3);
  tactileRect(300, 500-(75/2), 200, 75);
  rect(400, 500, 200, 75);
  strokeWeight(1);
  textSize(40);
  fill(0);
  text("OPTIONS", 400, 500);
  
}

void introClicks() {
  if(mouseX > 300 && mouseX < 500 && mouseY > 350 && mouseY < 450) {
  mode = GAME;
  }
  if(mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY < 550) {
    mode = OPTIONS;
  }
}
