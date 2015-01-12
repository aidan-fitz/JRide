public class VelocityAlgorithm {
    private double Mass, Velocity, Acceleration, Friction, Angle, Slope, KE, PE,Hieght, MechE, Gravity, WorkNonConservative, WorkApplied;
    public void SetHieght(int[] Coordinates, int i
+ndex){	
	this.Hieght = Coordinates[index];
    }

    public void SetMechanicalEnergy(double Mechanical){
	this.MechE = Mechanical;
    }
    public int CalculatePotential(){
   this.PE = Hieght * Gravity * Mass;
    return PE;
}

public int CalculateKinectic(){
 this.KE = .5 * (Velocity)^ 2 *mass;
	return KE;
}

public int
public int CalculateMechanical()
{
this.MechE = KE + PE + WorkNonConservative + WorkApplied
}

public int CalculateWorkNonConservative(){
mass *gravity  *cosine(pheta) * KinecticFictionCo * distance

}

public int CalculateAppliedForce(){
WorkFA = Force *distance;

}
{
this.MechE = KE + PE + WorkNonConservative + WorkApplied
}

public int VeloctiytoDistance(){

}
	
public void Driver(){



}



}
