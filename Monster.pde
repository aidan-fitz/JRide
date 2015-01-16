//class Monster {
//
//  private float y, mass, mechEnergy; 
//
//  private boolean down;
//
//  Monster() {
//    y = height;
//    mass = 5;
//    mechEnergy = mass * 9.80665 * y + 100000;
//  }
//
//
//
//  float speed() {
//    return sqrt(2 * kineticEnergy() / mass);
//  }
//
//  void kill() {
//    //grapic
//    //go to home screen
//  }
//
//
//  void  velocity() {
//
//    PVector down = new PVector(0, -1);
//  }
//
//  void go() {
//    draw();
//
//    PVector increment = velocity();
//    if (forward) {
//      xOffset += increment.x;
//    } else {
//      xOffset -= increment.x;
//    }
//  }
//
//  void draw() {
//    noStroke();
//    fill(#FF0000);
//    ellipse(width/2 + xOffset, height - y, 10, 10);
//  }
//}

