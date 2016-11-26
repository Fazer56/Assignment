float rev = 0;
float pMove = 0;

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
    textSize(35);
    text("The planet " + planet, 600, 200);
    textSize(25);
    text("\nDistance from the Sun (Astronical Units): " + distance, 600, 250);
    text("\nDiameter in kilometers: " + diameter, 600, 300);
    text("\nOrbit Period in Earth years: " + orbitperiod, 600, 350);
    text("\nOrbit velocity in kilometers per second: " + orbitvel, 600, 400);
    
    lights();
    fill(c);
    strokeWeight(.5);
    pushMatrix();
    translate(pMove, height/1.5);
    rotateZ(rev);
    sphere(diameter * (200/maxVal()));
    popMatrix();
    
    rev++;
    pMove+=10;
    
    if(pMove >= 800)
    {
      pMove = 800;
      
      
   
    }
    
    
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