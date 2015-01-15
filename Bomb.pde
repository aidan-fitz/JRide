class Bomb {

  private float y, mass, mechEnergy; 
  
  private boolean down;
  
  Bomb() {
    y = height;
    mass = 5;
    mechEnergy = mass * 9.80665 * y + 100000; 
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
   
  
  void  velocity() {
 
PVector down = new PVector(0, -1);

}

  float speed() {
    return sqrt(2 * kineticEnergy() / mass);
  }

public int ExplodingForce(){
WorkFA = Force *distance;

}
void drop(){
 draw();
    PVector increment = velocity();

}
  
void explode(){
 draw();
    PVector increment = velocity();

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
