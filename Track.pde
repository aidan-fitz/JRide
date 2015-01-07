import java.util.Random;
import java.util.Iterator;

class Track {
  
  Generator gen;
  float[] yyy;
  
  Track() {
    yyy = new float[width];
    gen = new Generator();
    for (int i = 0; i < yyy.length; i++) {
      yyy[i] = gen.next();
    }
  }
  
  void getNextAndShift() {
    System.arraycopy(yyy, 1, yyy, 0, yyy.length - 1);
    yyy[yyy.length - 1] = gen.next();
  }
  
  void draw() {
    stroke(#444444);
    strokeWeight(3);
    for (int i = 0; i < yyy.length - 1; i++) {
      line(i, height - yyy[i], i+1, height - yyy[i+1]);
    }
  }
  
  class Generator implements Iterator<Float> {

    Random rng;
    float last;
    final float first;
    float slope;
    int turning; // UP, DOWN, or 0
    int turnTimer;
    
    final int defTurnTimer = 60;
    
    Generator() {
      rng = new Random();
      last = height/2 + rng.nextInt(height/2);
      first = last;
      slope = -rng.nextFloat();
      turning = DOWN;
      turnTimer = defTurnTimer;
    }
    
    Float next() {
      float y = last;
      last += slope;
      adjustSlope();
      return y;
    }
    
    void adjustSlope() {
      if (slope >= 2.5) {
        turning = DOWN;
        turnTimer = defTurnTimer;
      }
      else if (slope <= -2.5) {
        turning = UP;
        turnTimer = defTurnTimer;
      }
      turn();
      slope += rng.nextFloat() * ((turning == DOWN)?-0.1:0.1);
    }
    
    void turn() {
      if (last + 50 > first) {
        turning = DOWN;
      }
      else if (last - 50 < 0) {
        turning = UP;
      }
      if (turnTimer <= 0) {
        turning = rng.nextBoolean()?UP:rng.nextBoolean()?DOWN:0;
        if (turning == UP || turning == DOWN) {
          turnTimer = defTurnTimer;
        }
      }
      else {
        turnTimer--;
      }
    }
    
    boolean hasNext() {
      return true;
    }
    
    void remove() {
      throw new UnsupportedOperationException();
    }
  }
}
