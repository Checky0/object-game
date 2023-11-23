class Bubble {
 float x, y, w; 
  
  Bubble(float _x, float _w){
  x = _x;
  y = 0 ;
  w = _w;
  }
  void update() {
  y = y - random(2,10);

  }
  
  void show() {
  strokeWeight(4);
  fill(255, 40);
  rect(x, y, w, w);

  }
  
  void edges() {
  if (y < -w) {
    y = height + w;
    }
  }
}
