void setup()
{
  fullScreen(P3D);
  
 //load in the font
 font = loadFont("ARDESTINE-48.vlw");
 font2 = loadFont("Electromagnetic Lungs.otf.vlw"); 
 font3 = loadFont("PhatBoy Slim.otf.vlw"); 
  
 table = loadTable("data.tsv", "header");
 loadPlanetTable();
 smooth();
  
}

PFont font, font2, font3;

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


Table table;

ArrayList<Planet> planets = new ArrayList<Planet>();

int gamestate = 0;

void draw()
{
  
  println(mouseX);
  println(mouseY);
  
  background(0);
  
  if(gamestate == 0)
  {
    menu();
  }
  
  else if (gamestate == 1)
  {
    background(0);
    drawUi();
    
    
  }
  
  

}


void menu()
{
  
  
  options();
  drawDiameterBarChart();
 // galaxyMap();
   
}


void drawDiameterBarChart()
{
  
  float x = width/2 + 20;
  float y = 10;
  float boxW = width/2 -30;
  float boxH = height/2;
  float barW = boxW/12;
  float boxX = x + boxW/8;
  float boxY = height/2 + 170;
  float scale = boxH/maxVal();  
  
  strokeWeight(2);
  noFill();
  rect(x, y , boxW, boxH + 250);
  textFont(font3);
  textSize(40);
  text("Planetary Diemeter in KM", boxX + 40, 80);
  
  Planet pl1 = new Planet(); 
  for(int i = 0; i < planets.size(); i++)
  {
    pl1 = planets.get(i);
    fill(pl1.c);
    rect(boxX, boxY, barW, -pl1.diameter*scale );
    fill(255,255,255);
    textSize(18);
    text(pl1.planet, boxX, boxY + 50);
    boxX = boxX + barW + 10;
    
  }
  
}

void drawTrendGraph()
{
  UI trend = new UI();
  
  
}

float maxVal()
{
  Planet pl1 = new Planet();
  
  float max = 0;
  
  for(int i = 0; i < planets.size(); i++)
  {
    pl1 = planets.get(i);
    if(pl1.diameter > max)
    {
      max = pl1.diameter;
      
    }
    
    
  }
  
  return max;
  
}

float distMaxVal()
{
  Planet pl2 = new Planet();
  
  float max = 0;
  
  for(int i = 0; i < planets.size(); i++)
  {
    pl2 = planets.get(i);
    if(pl2.distance > max)
    {
      max = pl2.distance;
      
    }
    
    
  }
  
  return max;
  