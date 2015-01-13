class Cart {

  private float y, mass, mechEnergy; // m, kg, J

  // true if going forward, false if going backward
  private boolean forward;
  
  private boolean friction;

  Cart() {
    y = height/2;
    mass = 10;
    mechEnergy = mass * gravity * y + 100000; // all potential energy at first
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
    v = speed();
    return new PVector(v * 1/hypotenuse, v * slope/hypotenuse);
  }

  // add to mechEnergy every frame
  public int friction() {
    return mass * gravity  * 1/sqrt(1+ slope() *slope()) * KFCo;
  }
  
  public float slope() {
    int index = (int) xOffset;
    return getY(index + 1) - getY(index);
  }

  public int CalculateAppliedForce() {
    WorkFA = Force *distance;
  }

  void go() {
    draw();
    PVector increment = velocity();
    if (forward) {
      xOffset += increment.x;
    } else {
      xOffset -= increment.x;
    }
  }

  void draw() {
    noStroke();
    fill(#FF0000);
    ellipse(width/2 + xOffset, height - y, 10, 10);
  }
}

