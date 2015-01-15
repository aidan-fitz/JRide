final float gravity = 4.5; // 9.80665; // m/ss

Track track;
Cart cart;

// How much to offset track. Rate of change is cart's horizontal velocity.
float xOffset = 5;

void setup() {
  size(800, 600);
  track = new Track();
  cart = new Cart();
  cart.y = height/2;
}

void draw() {
  // FIXME won't scroll
  background(#b9d9ff);
  
  // diagnostic
  if (cart.kineticEnergy() <= 0) {
    cart.mechEnergy += 500;
  }
  
  pushMatrix();
  translate(-xOffset, 0);
  track.draw();
  track.getNext();
  cart.setY();
  cart.go();

  popMatrix();
  
  // diagnostic
  text(cart.speed() + " m/s", 10, 10);
  
//  xOffset++;
}

void keyPressed() {
  if (key == ' ') {
    track = new Track();
  }
}
