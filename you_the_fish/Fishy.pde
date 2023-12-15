class Fishy {

  float fishX, fishY;   // Fish position
  float fishSpeed = 5;  // Fish movement speed
  PImage fishyRotate;
  
  Fishy(){
  // Draw the fish
    fishyRotate = loadImage("assets/fisho/feeeshy full rotate1.png");
}
  void move() {
    image(fishyRotate, fishX, fishY);
    // Move the fish
    if (keyPressed) {
      if (key == 'a' || key == 'A') {
        fishX -= fishSpeed;
      } else if (key == 'd' || key == 'D') {
        fishX += fishSpeed;
      } else if (key == 'w' || key == 'W') {
        fishY -= fishSpeed;
      } else if (key == 's' || key == 'S') {
        fishY += fishSpeed;
      }
    }

    // Keep the fish in frame
    fishX = constrain(fishX, 0, width - 30);
    fishY = constrain(fishY, 0, height - 30);
  }
}
