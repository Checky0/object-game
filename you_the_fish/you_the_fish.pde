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


//Spear spear;
//Fishy fish = new Fishy;

void setup() {
  size(1200, 750);
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

//void gameBGs() {
//  if (gageMode
//}

void gameOver() {
  background(255, 0, 0);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(32);
  text("Game Over", width / 2, height / 2);
  gameover = true;
}

//void resetGame() {
//  gameover = false;
//  fishX = width / 2;
//  fishY = height - 50;
//  loop();  // Resume the game loop
//}






/**
 Pseudocode:
 (List of variables global variables)
 Main code setup{
 Background of ocean
 noStroke
 size of 400x800
 }
 Main code draw{
 Foreground shapes that move as the player presses keys, making sure there’s collision detection with the fish
 Button to start timer in corner
 Call the food particles
 Call the human’s spear
 Call the object fish
 Score of up to 100
 }
 Human spear class{
 Shapes make up spear and spear head
 Targets fish object with dist(), but make it always extend a on a timer (in order to give the player time to move)
 Spear starts at the top of the screen, and moves into the screen at random timed intervals, then returns back up
 If collision detected with fish EATEN (game over) screen pops up and end the game
 }
 Fish class{
 Shapes that make up the fish, moving with WASD, and can’t go out of bounds, and shape variables that increase when colliding with food array
 If ‘C’ key is pressed the fish’s speed is increased, when released it resets to initial value
 }
 Food{
 Array of particles randomly displayed and slowly falling down across the screen
 If fish collides with them, the particle disappears and the score counter goes up
 }
 
 If the EATEN (game over) screen appears, show an image of a fish being grilled over a fire
 On the image, have a retry button that restarts the game
 If the YOU ATE (game won) screen appears, show image of fish sleeping in its cave/human being mad
 On image, have a play again button that restarts the game
 **/
