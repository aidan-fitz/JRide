final float gravity = 4.5; // 9.80665; // m/ss

Track track;
Cart cart;

// How much to offset track. Rate of change is cart's horizontal velocity.
float xOffset = 5, cartOffset = xOffset;

String instructions;

void setup() {
  size(800, 600);
  track = new Track();
  cart = new Cart();
  cart.y = height/2;
  
  println("SPACE = start over");
  println("Right Arrow = speed up");
  println("Left Arrow = slow down");
  println("// Up/Down = switch tracks");
}

void draw() {
  // FIXME won't scroll
  background(#b9d9ff);
  
  pushMatrix();
  translate(-xOffset, 0);
  track.draw();
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
  else if (key == CODED) {
    if (keyCode == RIGHT) {
      cart.gas();
    }
    else if (keyCode == LEFT) {
      cart.brake();
    }
  }
}
