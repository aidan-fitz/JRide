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


//public int CalculateTheta()
//{
//this.Theta =
//}

//public int CalculateMechanical()
//{
//this.mechEnergy = kineticEnergy() +  potentialEnergy() + WorkNonConservative + WorkApplied;
//}
//
//public int CalculateWorkNonConservative(){
//mass *gravity  * 1/sqrt(1+ slope() *slope()) * KFCo * distance;
//
//}
//

  // multiply by distance(?) and add to mechEnergy every frame
  float friction() {
    float sl = slope();
    return mass * gravity / sqrt(1 + sl*sl) * 0.08;
  }
  
  float workFriction() {
    return friction();
  }
  
  public float slope() {
    int index = (int) xOffset;
    return track.getY(index + 1) - track.getY(index);
  }
  
  // TODO gas and brake cost gold
  
  void gas() {
    mechEnergy += 200;
  }
  
  void brake() {
    mechEnergy -= 200;
  }

//for bombs, which transfer momentum to cart
//  public int CalculateAppliedForce() {
//    WorkFA = Force *distance;
//  }

  void setY() {
    float newY = track.getY();
    
    if (potentialEnergy() > mechEnergy) {
      forward = !forward;
    }
    else {
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
  }

  void draw() {
    noStroke();
    fill(#009900);
    ellipse(cartOffset + xOffset, height - y, 10, 10);
  }
}

