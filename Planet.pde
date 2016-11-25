class Planet
{
  String planet;
  float distance;
  float diameter;
  float orbitperiod;
  float orbitvel;
  color c;
  PVector location;
  PVector move;
  
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
  
  Planet(String pname, float dist, float dia, float orbitP, float orbitV)
  {
    this.planet = pname;
    this.distance = dist;
    this.diameter = dia;
    this.orbitperiod = orbitP;
    this.orbitvel = orbitV;
    
    planetInfo();
    
  }
  
  
  void planetInfo()
  {
    fill(255,255,255);
    textSize(30);
    text("The planet " + planet, 1000, 160);
    textSize(21);
    text("\nDistance from the Sun (Astronical Units): " + distance, 1000, 200);
    text("\nDiameter in kilometers: " + diameter, 1000, 250);
    text("\nOrbit Period in Earth years: " + orbitperiod, 1000, 300);
    text("\nOrbit velocity in kilometers per second: " + orbitvel, 1000, 350);
    
    
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