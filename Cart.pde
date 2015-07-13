class Cart {

  float y, mass, mechEnergy; // m, kg, J

  // true if going forward, false if going backward
  boolean forward = true;

  // true if the cart should experience friction
  boolean friction;

  Cart() {
    y = height/2;
    mass = 10;
    mechEnergy = mass * gravity * height; // all potential energy at first
  }

  float potentialEnergy() {
    return mass * gravity * y;
  }

  float kineticEnergy() {
    return mechEnergy - potentialEnergy();
  }

  float speed() {
    return sqrt(2 * kineticEnergy() / mass);
  }

  PVector velocity() {
    // determine slope
    float slope = slope(), 
    hypotenuse = sqrt(1 + slope*slope), 
    v = speed() / 8;
    return new PVector(v * (forward?1:-1)/hypotenuse, v * slope/hypotenuse);
  }

  public float slope() {
    int index = (int) xOffset;
    return track.getY(index + 1) - track.getY(index);
  }

  void gas() {
    gold -= 10;
    mechEnergy += 200;
  }

  void brake() {
    gold -= 10;
    mechEnergy -= 200;
  }

  void setY() {
    float newY = track.getY();

    if (potentialEnergy() > mechEnergy) {
      forward = !forward;
    } else {
      y = newY;
    }
  }

  void go() {
    draw();
    PVector increment = velocity();
    if (forward) {
      xOffset += increment.x;
    } else {
      xOffset -= increment.x;
    }
    // add increment.x pixels wide track
    track.getNext(increment.x);
    
    for (int i = 0; i < coins.size(); i++) {
      float diff = coins.get(i).getX() - x();
      if (abs(diff) < 5) {
        gold += coins.remove(i).getValue();
      }
    }
  }
  
//  void CollisionCoins() {
//
//    //if (Same coodinates){
//
//    Coins.SetTotal(1);
//    //destroy coin
//  }

  

  void draw() {
    noStroke();
    fill(#009900);
    ellipse(x(), height - y - 5, 10, 10);
  }
}

