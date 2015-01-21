final float gravity = 4.5; // 9.80665; // m/ss

Track track;
Cart cart;
List<Coin> coins;
float gold;

// How much to offset track. Rate of change is cart's horizontal velocity.
float xOffset = 5, cartOffset = xOffset;

String instructions;

void setup() {
  size(800, 600);
  track = new Track();
  cart = new Cart();
  cart.y = height/2;
  coins = new LinkedList<Coin>();
  gold = 0;

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

  for (Coin c: coins) {
    c.draw();
  }
  if (random(80) < 1) {
    float x = cartOffset + xOffset + width;
    coins.add(new Coin(x, track.getY(x) + 5));
  }


  popMatrix();

  fill(#000000);
  text(cart.mechEnergy + " J, " + cart.speed() + " m/s", 10, 10);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      cart.gas();
    } else if (keyCode == LEFT) {
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

