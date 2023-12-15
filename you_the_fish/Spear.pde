class Spear {

  float spearPosition;
  float spearSpeed;
  PImage spearPic;
  float ySpot = random(-100, 700);

  Spear() {
    spearPosition = 1;
    spearSpeed=random(10,12);
    spearPic = loadImage("spear sprite.png");
  }

  void update() {
    //update spear position
    spearPosition = spearPosition + spearSpeed;

    if (spearPosition + 50 >= width || spearPosition <= 0) {
      spearSpeed = spearSpeed *-1;
      //if time = 18, 16, 14, 12, 10, 8, 6, 4, 2, ySpot = 600
      ySpot = ySpot*random(-1, 1);
      //if (ySpot >= height){
      //ySpot=0;
      //}
      println(ySpot);
    }
    image(spearPic, spearPosition, -2000+ySpot); //draw spear
  }
}
