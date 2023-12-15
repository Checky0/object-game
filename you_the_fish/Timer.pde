class Timer {
  float Time;

  Timer(float set) { //constructor
    Time = set;
  }
  float getTime() {// returns the current time
    return(Time);
  }
  void setTime(float set) { //set timer to whatever is temp variable ie. 60 seconds
    Time = set;
  }
  void countUp() { //update time by counting up, called within void draw to work
    Time += 1/frameRate;
  }
  void countDown() { //update time by counting down, called within void draw to work
    Time -= 1/frameRate;
  }
}
