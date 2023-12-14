 /**
 Charlize Collins
 991724329
 
 Refrences used for this project:
 For understanding game states:
 [John McCaffrey]. (2016, September 28). Programming game states in processing [Video]. Youtube. https://youtu.be/q8rP6R0LCss?si=QPyeFDssXc-OJXdN
 Reviewing core programmng concepts:
 [The Coding Train]. (2023, October 1). Creative Coding for Beginners - Full Course! [Video]. Youtube. https://youtu.be/4JzDttgdILQ?si=hFEwnRkZDzm-AppA
 **/

String gameMode;
int menu = 0; // 0 main menu, 1 game play, 2 end game

//Button StartButton;

PVector spearPosition;
Bubble[] bubbles = new Bubble [7];
boolean gameover = false;
boolean fishLeft;
boolean fishRight;
boolean fishUp;
boolean fishDown;
PVector fishPosition = new PVector();
float fishSpeed = 6;
PImage profish;
PImage speechB;
Timer startTimer;
Button resetbutton;

//Spear spear;
//Fishy fish = new Fishy;

void setup() {
  size(1200, 750);
  startTimer = new Timer(20);
  resetbutton = new Button(100, 100, 100, 50, "Reset", 0, 200, 200);
  
  gameMode = "START";
  //StartButton = new Button(500, 100, 200, 50, "Start", 0, 200, 200);
  noStroke();
  //noCursor();
  profish = loadImage("Sprite-0001.png.png");
  speechB = loadImage("speech bobble game sprites.png");

  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(random(50)+ i * 60, random(40) + 4);
  }
}

void draw() {
  background (53, 104, 189);
  fill(#85B9B6, 90);
  rect(0, 700, 1200, 50); 
  fill(#85B9B6, 90);
  rect(1000, 680, 200, 20); 
  fill(#85B9B6, 90);
  rect(1100, 660, 200, 20);
  startTimer.countDown();
  fill(0);
  text(startTimer.getTime(), 1100, 20);
  
  //if(Time==0){
  
  //}
  if(resetbutton.isClicked()){
  startTimer.setTime(100);
  }
  
  resetbutton.update();
  resetbutton.render();
 
  //fish.showFishy();
  //fish.fishMove();
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i].update();
    bubbles[i].edges();
    bubbles[i].show();
    image(profish, 20, 520+sin(frameCount*0.19));
    image(speechB, 230, 360+sin(frameCount*0.3));
  }
  switch(menu) {
  case 0://main menu
    {
     fill(250);
     textSize(30);
     textAlign(CENTER, CENTER);
     text("Dodge the spear!", width/2, 300);
     //StartButton.update();
     //STartButton.render();
     //Fishy.showFishy();
    }
    break;
  case 1: // game play
    {
    }
    break;
  case 2: // end game
    {
    }
    break;
  }
}


void gameOver() {
  background(255, 0, 0);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(32);
  text("Game Over", width / 2, height / 2);
  gameover = true;
}
