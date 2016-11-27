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
int image = 1;

void draw()
{
  
  
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
    
  }
  
  else if (gamestate == 1)
  {
    
    drawUi();
    
    
  }
  
  

}


void menu()
{
  //CROSSHAIRS CURSOR
  noCursor();
  noFill();
  stroke(0, 255, 255);
  ellipse(mouseX, mouseY, 20, 20);
  line(mouseX-20, mouseY, mouseX + 20, mouseY);
  line(mouseX, mouseY -20, mouseX, mouseY + 20);
  
  drawGalaxy();
  options();
  charts();
 
  
  if(check == 1)
  {
    drawDiameterBarChart();
  }
  else if(check ==0)
  {
    drawTrendGraph();
  }
  
   
}







   
  