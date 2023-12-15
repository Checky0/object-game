class Startbutton {
  PVector Pos = new PVector (0, 0);
  float bWidth = 0;
  float bHeight = 0;
  color bColor;
  String bText;
  Boolean bPressed = false;
  Boolean bClicked = false;
  //constructor with parameters to create a start button
  Startbutton(int x, int y, int w, int h, String t, int r, int g, int b)
  {
    Pos.x = x;
    Pos.y = y;
    bWidth = w;
    bHeight = h;
    bColor = color(r, g, b);
    bText = t;
  }
  void update() { //must be placed in draw 
    if (mousePressed && mouseButton == LEFT || (keyPressed && key == ENTER)) { //&& bPressed = false
      bPressed = true;
      if (mouseX >= Pos.x && mouseX <= Pos.x + bWidth && mouseY >= Pos.y && mouseY <= Pos.y + bHeight|| (keyPressed && key == ENTER)) {
        bClicked = true;
      }
    } else
    {
      bClicked = false;
    }
    if(!mousePressed){
      bPressed = false;
    }
  }
  
  void render(){ //must be places in draw to render button to screen
  fill(bColor); 
  rect(Pos.x, Pos.y, bWidth, bHeight);
  
  fill(0);
  textAlign(CENTER, CENTER);
  text(bText, Pos.x+(bWidth/2), Pos.y+ (bHeight/2));
  }
  boolean isClicked(){//use this in a if statement to check if th ebutton has been clicked
  return bClicked;
  }
  
}
