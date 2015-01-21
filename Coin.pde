class Coin {

  private PVector coord;

  Coin(float x, float y) {
    coord = new PVector(x, y);
  }

  void draw() {
    noStroke();
    fill(#FFCC00);
    ellipse(coord.x, height - coord.y, 10, 10);
  }
}

