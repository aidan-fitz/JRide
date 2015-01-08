class Cart {

  private PVector pos, vel, acc; // m(x,y), m/s(x,y), m/ss(x,y)
  private float mass; // kg
    
  Cart() {
    pos = null;
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
    mass = 10;
  }
  
  float kineticEnergy() {
    return mass * vel.magSq() / 2;
  }
  
  void draw() {
    noStroke();
    fill(#FF0000);
    ellipse(pos.x, height - pos.y, 10, 10);
  }
}
