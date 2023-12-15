class Fishy {

  float fishX, fishY;   // Fish position
  float fishSpeed = 9;  // Fish movement speed
  PImage fishyRotate;
  PImage fishyRotateright;
  PImage fishyRotateup;
  PImage fishyRotatedown;
  
  Fishy(){
  // Draw the fish
    fishyRotate = loadImage("assets/fisho/feeeshy full rotate1.png");
    fishyRotateright = loadImage("assets/fisho/feeeshy full rotate5.png");
    fishyRotateup = loadImage("assets/fisho/feeeshy full rotate2.png");
    fishyRotatedown = loadImage("assets/fisho/feeeshy full rotate4.png");
}
  void move() {
    image(fishyRotate, fishX, fishY);
    // Move the fish
    if (keyPressed) {
      if (key == 'a' || key == 'A') {
        fishX -= fishSpeed;
      } else if (key == 'd' || key == 'D') {
        fishX += fishSpeed;
        image(fishyRotate, fishX, fishY);
        image(fishyRotateright, fishX, fishY);
      } else if (key == 'w' || key == 'W') {
        fishY -= fishSpeed;
        image(fishyRotateup, fishX, fishY);
      } else if (key == 's' || key == 'S') {
        fishY += fishSpeed;
        image(fishyRotatedown, fishX, fishY);
      }
    }

    // Keep the fish in frame
    fishX = constrain(fishX, 0, width - 30);
    fishY = constrain(fishY, 0, height - 30);
  }
}
