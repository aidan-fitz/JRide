/**
We might not need this, actually, if we can calculate velocity from potential energy. --Aidan

Java conventions:
- field and method names are not capitalized

Some Processing conventions:
- Use float instead of double
- 

*/
public class VelocityAlgorithm {
  private double Mass, Velocity, Acceleration, Friction, Angle, Slope, KE, PE, Hieght, MechE, Gravity;
  
  public void SetHieght(int[] Coordinates, int index) {	
    this.Hieght = Coordinates[index];
  }

  public void SetMechanicalEnergy(double Mechanical) {
    this.MechE = Mechanical;
  }
  public double CalculatePotential() {
    this.PE = Hieght * Gravity * Mass;
    return PE;
  }

  public double CalculateKinectic() {
    this.KE = .5 * (Velocity)^ 2 *mass;
    return KE;
  }

  public double VeloctiytoDistance() {
    // filler
    return 0;
  }

  public void Driver() {
  }
}

