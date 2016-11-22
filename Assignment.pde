void setup()
{
  fullScreen(P3D);
  
  table = loadTable("data.tsv", "header");
  loadPlanetTable();
  smooth();
}

Table table;

ArrayList<Planet> planets = new ArrayList<Planet>();


int gamestate = 0;

void draw()
{
  
  background(0);
  
  if(options() == 0)
  {
    menu();
  }
  
  else if (options() == 1)
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
  fill(255,255,255);
  stroke(255,255,255);
  line(x + barW, 120, x + barW, boxY + 20); 
  line(x + barW, 120, x + barW, boxY + 20); 
  
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