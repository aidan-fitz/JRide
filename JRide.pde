Track track;
Cart cart;

void setup() {
  size(800, 600);
  track = new Track();
  cart = new Cart();
  cart.pos = new PVector(width/2, height/2);
}

void draw() {
  background(#b9d9ff);
  track.draw();
  track.getNextAndShift();
  cart.pos.y = track.yyy[width/2];
  cart.draw();
}

void keyPressed() {
  if (key == ' ') {
    track = new Track();
  }
}
