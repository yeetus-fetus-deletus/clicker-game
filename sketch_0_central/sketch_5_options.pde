void options() {
  //setup
  background(29, 122, 240);
  fill(255);
  textSize(75);
  text("OPTIONS", 400, 100);
  textSize(30);
  text("DIFFICULTY", 400, 250);
  textSize(20);
  
  //difficulty level buttons
  fill(150);
  tactileRect(230, 300, 100, 50);
  rect(280, 325, 100, 50);
  fill(0);
  text("EASY", 280, 325);
  fill(150);
  tactileRect(350, 300, 100, 50);
  rect(400, 325, 100, 50);
  fill(0);
  text("MEDIUM", 400, 325);
  fill(150);
  tactileRect(470, 300, 100, 50);
  rect(520, 325, 100, 50);
  fill(0);
  text("HARD", 520, 325);
  
  //exit button
  fill(150);
  tactileRect(730, 20, 50, 50);
  rect(755, 45, 50, 50);
  fill(0);
  strokeWeight(4);
  stroke(0);
  line(740, 30, 770, 60);
  line(770, 30, 740, 60);
  strokeWeight(1);
  
  //difficulty level
  if(level == 1) {
    vx = random(-3, 3);
    vy = random(-3, 3);
    noStroke();
    fill(29, 122, 240);
    rect(400, 400, 150, 75);
    fill(255);
    textSize(30);
    text("EASY", 400, 400);
    d = 120;
  }
  if(level == 2) {
    vx = random(-7, 7);
    vy = random(-7, 7);
    noStroke();
    fill(29, 122, 240);
    rect(400, 400, 150, 75);
    fill(255);
    textSize(30);
    text("MEDIUM", 400, 400);
    d = 100;
  }
  if(level == 3) {
    vx = random(-11, 11);
    vy = random(-11, 11);
    noStroke();
    fill(29, 122, 240);
    rect(400, 400, 150, 75);
    fill(255);
    textSize(30);
    text("HARD", 400, 400);
    d = 80;
  }
  
  //colours
  strokeWeight(2);
  
  if (dist(275, 475, mouseX, mouseY) < 15) {
    stroke(150);
  } else {
    stroke(0);
  }
  fill(red);
  circle(275, 475, 30);
  
  if (dist(325, 475, mouseX, mouseY) < 15) {
    stroke(150);
  } else {
    stroke(0);
  }
  fill(orange);
  circle(325, 475, 30);
  
  if (dist(375, 475, mouseX, mouseY) < 15) {
    stroke(150);
  } else {
    stroke(0);
  }
  fill(yellow);
  circle(375, 475, 30);
  
  if (dist(425, 475, mouseX, mouseY) < 15) {
    stroke(150);
  } else {
    stroke(0);
  }
  fill(green);
  circle(425, 475, 30);
  
  if (dist(475, 475, mouseX, mouseY) < 15) {
    stroke(150);
  } else {
    stroke(0);
  }
  fill(blue);
  circle(475, 475, 30);
  
  if (dist(525, 475, mouseX, mouseY) < 15) {
    stroke(150);
  } else {
    stroke(0);
  }
  fill(purple);
  circle(525, 475, 30);
  
  //indicator
  strokeWeight(1);
  stroke(0);
  fill(selectedColor);
  rect(400, 525, 100, 20);
}

void optionsClicks() {
  if(mouseX > 230 && mouseX < 330 && mouseY > 300 && mouseY < 350) {
    level = 1;
  }
  if(mouseX > 350 && mouseX < 350 && mouseY > 300 && mouseY < 350) {
    level = 2;
  }
  if(mouseX > 470 && mouseX < 570 && mouseY > 300 && mouseY < 350) {
    level = 3;
  }
  if(mouseX > 730 && mouseX < 780 && mouseY > 20 && mouseY < 70) {
    mode = INTRO; 
  }
  
  if (dist(275, 475, mouseX, mouseY) < 15) {
    selectedColor = red;
  }
  if (dist(325, 475, mouseX, mouseY) < 15) {
    selectedColor = orange;
  }
  if (dist(375, 475, mouseX, mouseY) < 15) {
    selectedColor = yellow;
  }
  if (dist(425, 475, mouseX, mouseY) < 15) {
    selectedColor = green;
  }
  if (dist(475, 475, mouseX, mouseY) < 15) {
    selectedColor = blue;
  }
  if (dist(525, 475, mouseX, mouseY) < 15) {
    selectedColor = purple;
  }
}
