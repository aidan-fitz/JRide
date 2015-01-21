class Coin {

  private PVector coord;
  private float value;

  Coin(float x, float y) {
    coord = new PVector(x, y);
    value = random(10, 20);
  }
  
  public float getX() {
    return coord.x;
  }
  
  public float getY() {
    return coord.y;
  }
  
  public float getValue() {
    return value;
  }

  void draw() {
    noStroke();
    fill(#FFCC00);
    ellipse(getX(), height - getY(), 10, 10);
  }
}

