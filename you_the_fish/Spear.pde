class Spear {
 float x, y;  // Spear position
  float speed; // Spear falling speed
  boolean active;
PVector spearPosition = new PVector ();
 Spear() {
    active = false;
  }

  void spawn() {
    x = random(width);
    y = -30;
    active = true;
  }

  void move() {
    y += speed;
  }

  void display() {
    fill(139, 69, 19);
    rect(x, y, 10, 30);
  }




}
