class Bomb {

  private PVector position, velocity;

  private boolean exploding;

  Bomb() {
    position = new PVector(random(width), 0);
    velocity = new PVector(0, 0);
    exploding = false;
  }

  //public int ExplodingForce(){
  //WorkFA = Force *distance;
  //
  //}
  void drop() {
    draw();
    velocity.y += gravity / frameRate;
  }

  void explode() {
    draw();
  }

  void go() {
    draw();
    position.add(velocity);
  }

  void draw() {
    noStroke();
    fill(#FF0000);
    ellipse(position.x, position.y, 10, 10);
  }
}

