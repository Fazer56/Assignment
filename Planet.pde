class Planet
{
  String planet;
  float distance;
  float diameter;
  float orbitperiod;
  float orbitvel;
  color c;
  
  //using an array to split the fields
  Planet(String line)
  {
    String[] parts = line.split("\t");
    planet = parts[0];
    distance = Float.parseFloat(parts[1]);
    diameter = Float.parseFloat(parts[2]);
    orbitperiod = Float.parseFloat(parts[3]);
    orbitvel = Float.parseFloat(parts[4]);
    
    
  }
  
  //default constructors
  Planet()
  {
    
  }
 
  String toString()
  {
    return planet + "\t" 
          + distance 
          + "\t" + diameter
          + "\t" 
          + orbitperiod + "\t" 
          + orbitvel;
    
  }
  
}