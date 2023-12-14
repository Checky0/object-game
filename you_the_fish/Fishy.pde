class Fishy {

  Fishy() {

    showFishy();
    //fishMove();



    //PVector fishPosition = new PVector();
  }
  void showFishy() {
    PVector fishPosition = new PVector();
    fill(251, 218, 233);
    rect(fishPosition.x+38, fishPosition.y+sin(frameCount*0.01), 107, 41);
    fill(251, 218, 233);
    rect(fishPosition.x+22, fishPosition.y, 15, 10);
  }

  void keyPressed() {
    boolean fishLeft;
    boolean fishRight;
    boolean fishUp;
    boolean fishDown;

    if (key == 'W' || key == 'w') {
      fishUp = true;
    }
    if (key == 'S' || key == 's') {
      fishDown = true;
    }
    if (key == 'A' || key == 'a') {
      fishLeft = true;
    }
    if (key == 'D' || key == 'd') {
      fishRight = true;
    }
  }

  void keyReleased() {
    boolean fishLeft;
    boolean fishRight;
    boolean fishUp;
    boolean fishDown;

    if (key == 'W' || key == 'w') {
      fishUp = false;
    }
    if (key == 'S' || key == 's') {
      fishDown = false;
    }
    if (key == 'A' || key == 'a') {
      fishLeft = false;
    }
    if (key == 'D' || key == 'd') {
      fishRight = false;
    }
  }

//  void fishMove() {
//    boolean fishLeft;
//    boolean fishRight;
//    boolean fishUp = keyPressed = UP;
//    boolean fishDown;
//    PVector fishPosition = new PVector();
//    float fishSpeed = 5;


//    if (fishUp) {
//      if (fishPosition.y - fishSpeed >= 0) {
//        fishPosition.y -= fishSpeed;
//      }
//    }
//    if (fishDown) {
//      if (fishPosition.y + 50 + fishSpeed <= height) {
//        fishPosition.y += fishSpeed;
//      }
//    }
//    if (fishLeft) {
//      if (fishPosition.x - fishSpeed >= 0) {
//        fishPosition.x -= fishSpeed;
//      }
//    }
//    if (fishRight) {
//      if (fishPosition.x + 50 + fishSpeed <= width) {
//        fishPosition.x += fishSpeed;
//      }
//    }
//  }
}
