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
  
  println("Right Arrow = speed up");
  println("Left Arrow = slow down");
  println("Hold Mouse = pause");
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
  text(cart.mechEnergy + " J, " + cart.speed() + " m/s", 10, 10);
  
// Uncomment to show only the first frame
//  noLoop();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      cart.gas();
    }
    else if (keyCode == LEFT) {
      cart.brake();
    }
  }
}

void mousePressed() {
  noLoop();
}

void mouseReleased() {
  loop();
}
