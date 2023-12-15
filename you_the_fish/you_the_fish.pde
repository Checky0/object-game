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
String[] textPhrases = {"Hey!", "You, yeah you.", "Hello there!", "How's it going?", "Are you fr?"};
int currentPhrase = 0;

//Button StartButton;

PVector spearPosition;
Bubble[] bubbles = new Bubble [21];
boolean gameover = false;
boolean fishLeft;
boolean fishRight;
boolean fishUp;
boolean fishDown;
PVector fishPosition = new PVector();
float fishSpeed = 6;
PImage profish;
PImage speechB;
PImage jolly;
PImage goodMood;
PImage fishAte;
Timer startTimer;
Button resetbutton;
Startbutton startb;
int playerSize = 100;
Spear bigSpear;
Fishy yourFish;


//Fishy fish = new Fishy;

void setup() {
  size(1200, 750);
  bigSpear = new Spear();
  yourFish = new Fishy();
  startTimer = new Timer(20);
  resetbutton = new Button(1050, 100, 100, 50, "Reset", 20, 100, 255);
  startb = new Startbutton(width/2-50, height/2-50, 100, 50, "Swim!", 90, 100, 255);
  
  gameMode = "START";
  //StartButton = new Button(500, 100, 200, 50, "Start", 0, 200, 200);
  noStroke();
  //noCursor();
  profish = loadImage("Sprite-0001.png.png");
  speechB = loadImage("speech bobble game sprites.png");
  fishAte = loadImage("fish ate.png");
  goodMood = loadImage("good mood fish.jpg");
  jolly = loadImage("jolly fish.png");
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

  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i].update();
    bubbles[i].edges();
    bubbles[i].show();
    image(profish, 20, 520+sin(frameCount*0.19));
  }
  switch(menu) {
  case 0://main menu
    {
      bigSpear.update();
      fill(250);
      textSize(30);
      textAlign(CENTER, CENTER);
      text("Dodge the spear!", width/2, 300);
      fill(250);
      textSize(30);
      textAlign(CENTER, CENTER);
      text("Press space to talk~!", width/3, 350);
      startb.update();
      startb.render();
      if(startb.isClicked()){
      menu = 1;
      }
    }
    break;
  case 1: // game play
    {
      bigSpear.update();
      startTimer.countDown();
      image(speechB, 230, 360+sin(frameCount*0.3));
      yourFish.move();
      fill(255);
        textSize(42);
        textAlign(CENTER, CENTER);
        text(textPhrases[currentPhrase], width / 2+20, 600);
        if (keyPressed && key == ' ') {
          swapTextPhrase();
        }
      fill(30, 150, 0);
      text(startTimer.getTime(), 1100, 60);
      if (startTimer.getTime() <= 0) {
          menu = 2; // Set menu to "end game"
        }
    }
    break;
  case 2: // end game
    {
      gameOver();
      fill(100, 30, 200);
      rect(0, 0, 1200, 700);
      resetbutton.update();
      resetbutton.render();
      textAlign(CENTER, CENTER);
      textSize(32);
      text("You are dinner...!!", width / 2, height / 2);
      if (resetbutton.isClicked()) {
        startTimer.setTime(100);
        menu = 0;
      }
    }
    break;
  case 3: //win
  {
  image(goodMood, 0, 0);
  image(jolly, 900, 400);
  menu = 0;
  }
  break;
  }
}


  void gameOver() {
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(32);
  text("Game Over", width / 2, height / 2);
  gameover = true;
}

void swapTextPhrase() {
  currentPhrase = (currentPhrase + 1) % textPhrases.length;
}
