import java.util.Random;

class Track {
  
  float[] heights; // height (m) at given x-displacement from start
  Random ness;
  
  Track(long seed) {
    heights = new float[1024];
    ness = new Random();
    heights[0] = ness.nextInt(600);
    
  }
  
  static class Generator implements Iterator<Float> {

    Random rng;
    float last;
    float slope;
    int turning; // UP, DOWN, or 0
    int turnTimer = 30;
    
    Generator() {
      rng = new Random();
      slope = rng.nextFloat() * rng.nextBoolean()?1:-1;
      turning = rng.nextBoolean()?UP:rng.nextBoolean()?DOWN:0;
    }
    
    Float next() {
      float y = last;
      last += slope;
      adjustSlope();
      return y;
    }
    
    void adjustSlope() {
      if (slope >= 1.5) {
        turning = DOWN;
        turnTimer = 30;
      }
      else if (slope <= -1.5) {
        turning = UP;
        turnTimer = 30;
      }
      
      slope += rng.nextFloat() * (turning == DOWN)?-1:1;
    }
    
    boolean hasNext() {
      return true;
    }
    
    void remove() {
      throw new UnsupportedOperationException();
    }
  }
}
