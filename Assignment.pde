void setup()
{
  fullScreen(P3D);
  
 //load in the font
 font = loadFont("ARDESTINE-48.vlw");
 font2 = loadFont("Stencil-48.vlw"); 
 font3 = loadFont("PhatBoy Slim.otf.vlw"); 
 
 //load image
 img = loadImage("uni2.jpg");
 img2 = loadImage("uni3.jpg");
 img3 = loadImage("uni4.jpg");
 
  
 table = loadTable("data.tsv", "header");
 loadPlanetTable();
 smooth();
  
}

PImage img;
PImage img2;
PImage img3;

PFont font, font2, font3;

/* Class for UI*/

/* Class for Planets*/


Table table;

ArrayList<Planet> planets = new ArrayList<Planet>();
ArrayList<Star> stars = new ArrayList<Star>();
ArrayList<Galaxy> galaxies = new ArrayList<Galaxy>();

//int gamestate = -1;
int gamestate = 0;
int check = 0;
int image = 0;

void draw()
{
  
  println(mouseX);
  println(mouseY);
  
  background(0);
  
  if(image == 0)
  {
    image(img, 0, 0);
    
  }
  if(image == 1)
  {
    image(img2, 0, 0);
    
    
  }
  else if(image == 2)
  {
   
    image(img3, 0, 0);
    
  }
   
  if(gamestate == -1)
  {
    loading();
    
  }
  
  else if(gamestate == 0)
  {
    menu();
    charts();
    drawGalaxy();
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
  
  if(check == 1)
  {
    drawDiameterBarChart();
  }
  else if(check ==0)
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
  textFont(font2);
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
  textFont(font2);
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
    
    if((mouseX >= boxX-15 && mouseX < boxX + 15) && (mouseY >= boxY-pl1.distance*scale -15 && mouseY < boxY-pl1.distance*scale + 15))
    {
      pl1.planetInfo();
    }
    
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


   
  