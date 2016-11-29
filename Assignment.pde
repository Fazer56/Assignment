import ddf.minim.*;

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
 
 //load data 
 table = loadTable("data.tsv", "header");
 loadPlanetTable();
 
 //load music
 minim = new Minim(this);
  
  tune = minim.loadFile ("Richard Strauss- Also sprach Zarathustra (1) Zubin Mehta.mp3");
  warp= minim.loadFile("UFO_take.wav");
  gun = minim.loadFile("Alien_gun.wav");
  door = minim.loadFile("Chamber.wav");
  chew = minim.loadFile("Chewbacca.wav");
  tune.play();
}

Minim minim;
AudioPlayer tune;
AudioPlayer warp;
AudioPlayer gun;
AudioPlayer door;
AudioPlayer chew;

PImage img;
PImage img2;
PImage img3;
PFont font, font2, font3;
Table table;

ArrayList<Planet> planets = new ArrayList<Planet>();
ArrayList<Star> stars = new ArrayList<Star>();
ArrayList<Galaxy> galaxies = new ArrayList<Galaxy>();

//int gamestate = -1;
int gamestate = 0;
int check = 0;
int image = 1;
float gauge = 248;
float counter = 100;
boolean refill = false;
float choice = 0;
float move = 0;
float move2 = 0;
float move3 = 0;
float move4 = 0;
float move5 = 0;
float move6 = 0;
boolean mCheck = false;
float arctheta = 0;
float gridX = 0;
float gridY = 0;
float movChartX = 0; 
float movChartY = 0; 
float ltheta = 0;
float theta = 0;
float rev = 0;
float pMove = 0;
float rtheta = 0;
float size = 0;
float imgWMove = 0;
float imgTMove = 1;
float imgHMove = 0;
float mv1 =0;
float mv2 = 0;
float mv3 = 0;
float load = 0;
float xz = 0;
float yz = 0;
float tz = 0; 
float pz = 0;
float selectedX;
float selectedY;
float moveElip = 0;

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
    //reset variables
    imgWMove = 0;
    imgTMove = 1;
    imgHMove = 0;
    mv1 =0;
    mv2 = 0;
    mv3 = 0;
    movChartX = 0; 
    movChartY = 0;
    pMove = 0;
    
    drawUi();
    
    if(choice == 1)
    {
      navDials();
      tune.play();
      
    }
    if(choice == 2)
    {
      soundWave();
      tune.pause();
    }
  }
  else if(gamestate == 2)
  {
    drawStarsGrid();
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
  else if(check == 0)
  {
    graphRect();
  }
   
}







   
  