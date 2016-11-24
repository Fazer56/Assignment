void setup()
{
  fullScreen(P3D);
  
 //load in the font
 font = loadFont("ARDESTINE-48.vlw");
 font2 = loadFont("Electromagnetic Lungs.otf.vlw"); 
 font3 = loadFont("PhatBoy Slim.otf.vlw"); 
 
 //load image
 img = loadImage("uni2.jpg");
  
 table = loadTable("data.tsv", "header");
 loadPlanetTable();
 smooth();
  
}

PImage img;

PFont font, font2, font3;

/* Class for UI*/

/* Class for Planets*/


Table table;

ArrayList<Planet> planets = new ArrayList<Planet>();
ArrayList<Star> stars = new ArrayList<Star>();

int gamestate = -1;
int check = 0;

void draw()
{
  
  println(mouseX);
  println(mouseY);
  
  background(0);
  image(img, 0, 0);
   
  if(gamestate == -1)
  {
    loading();
    
  }
  
  else if(gamestate == 0)
  {
    menu();
    charts();
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
  
  if(check == 0)
  {
    drawDiameterBarChart();
  }
  else if(check ==1)
  {
    drawTrendGraph();
  }
  
  
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
  float x = width/2 + 20;
  float y = 10;
  float boxW = width/2 -30;
  float boxH = height/2;
  float barW = boxW/12;
  float boxX = x + boxW/8;
  float boxY = height/2 + 170;
  float scale = boxH/distMaxVal(); 
  float bx = barW + 10;
  float txtX = boxX;
  
  strokeWeight(2);
  noFill();
  rect(x, y , boxW, boxH + 250);
  textFont(font3);
  textSize(40);
  text("Planetary Orbit Velocity", boxX + 40, 80);
  
  Planet pl1 = new Planet();
  Planet pl2 = new Planet(); 
  for(int i = 0; i < planets.size()-1; i++)
  {
    pl1 = planets.get(i);
    pl2 = planets.get(i+1);
    fill(pl1.c);
    strokeWeight(3);
    line(boxX, boxY-pl1.distance*scale, boxX + barW, boxY-pl2.distance*scale );
    ellipse(boxX, boxY-pl1.distance*scale, 30, 30);
    fill(255,255,255);
    textSize(18);
    text(pl1.planet, txtX, boxY + 50);
    boxX = boxX + barW;
    txtX = txtX + bx;
    
  }
  
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
}