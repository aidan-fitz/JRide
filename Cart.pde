class Cart {

  private float x, y, mass, mechEnergy; // m, m, kg, J
    
  Cart() {
    x = width/2;
    y = height/2;
    mass = 10;
    mechEnergy = mass * 9.80665 * y; // all potential energy at first
  }
  
  float potentialEnergy() {
    return mass * 9.80665 * y;
  }
  
  float kineticEnergy() {
    return mechEnergy - potentialEnergy();
  }
  
  float speed() {
    return sqrt(2 * kineticEnergy() / mass);
  }
  
  PVector velocity() {
    // determine slope
    float slope = 0,
          hypotenuse = sqrt(1 + slope*slope),
          v = speed();
    return new PVector(v * 1/hypotenuse, v * slope/hypotenuse);
  }
  
  void draw() {
    noStroke();
    fill(#FF0000);
    ellipse(pos.x, height - pos.y, 10, 10);
  }
}
