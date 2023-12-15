class Spear {

  int spearPosition;
  int spearSpeed;
  PImage spearPic;
  float ySpot = random(-100, 100);

  Spear() {
    spearPosition = 1;
    spearSpeed=10;
    spearPic = loadImage("spear sprite.png");
  }

  void update() {
    //update spear position
    spearPosition = spearPosition + spearSpeed;

    if (spearPosition + 50 >= width || spearPosition <= 0) {
      spearSpeed = spearSpeed *-1;
      ySpot = ySpot*random(-1, 10);
      //if (ySpot >= height){
      //ySpot=0;
      //}
      println(ySpot);
    }
    image(spearPic, spearPosition, -2000+ySpot); //draw spear
  }
}
