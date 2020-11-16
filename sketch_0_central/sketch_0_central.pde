import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//colour pallette
color red     = #FF0000;
color orange  = #FF8D00;
color yellow  = #FFF300;
color green   = #22FF00;
color blue    = #3219FF;
color purple  = #B600FF;
color selectedColor;

//mode variables
int mode;
final int INTRO     = 1;
final int GAME      = 2;
final int PAUSE     = 3;
final int GAMEOVER  = 4;
final int OPTIONS   = 5;

//target variables
float x, y, d;
float vx, vy;
int score, lives;

//difficulty level variable
int level;

//sound FX
Minim minim;
AudioPlayer scoreA, clickA;

void setup() {
  size(800, 600);
  mode = INTRO;
  //mode = GAMEOVER;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  
  //colour
  selectedColor = red;
  
  //target initialize
  x = random(50, 750);
  y = random(50, 550);
  
  //target movement initialize
  level = 2;
  
  //score initialize
  score = 0;
  lives = 3;
  
  //sound FX
  minim = new Minim(this);
  scoreA = minim.loadFile("score.wav");
  clickA = minim.loadFile("wall.wav");
}

void draw() {
  if(mode == INTRO) {
    intro();
  } else if(mode == GAME) {
    game();
  } else if(mode == PAUSE) {
    pause();
  } else if(mode == GAMEOVER) {
    gameOver();
  } else if(mode == OPTIONS) {
    options();
  } else {
    println("Error: Mode = " + mode);
  }
}

void tactileRect(int x, int y, int w, int h) {
  if(mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    stroke(150);
    fill(255);
  } else {
    stroke(0);
    fill(150);
  }
}
