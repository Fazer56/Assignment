void setup()
{
  fullScreen();
  
  table = loadTable("data.tsv", "header");
  loadPlanetTable();
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
  
  if (options() == 1)
  {
    background(0);
    stars();
    drawUi();
    
    
  }
  
  

}


void menu()
{
  
  
  options();
  drawDiameterBarChart();
   
}

int options()
{
  
  /* FIRST BUTTON */
  
  Button opt1;
  opt1 = new Button();
  
  opt1.rectX = width/4;
  opt1.rectY = height/8;
  opt1.recW = opt1.rectX;
  opt1.recH = opt1.rectX/4;
  opt1.option = "Spaceship Cockpit";
  
  stroke(0,255,255);
  noFill();
  rect(opt1.rectX, opt1.rectY, opt1.recW, opt1.recH);
  textSize(opt1.rectX/10);
  text(opt1.option, opt1.rectX+10, opt1.rectY + opt1.rectX/10);
  
   
  if((mouseX >= opt1.rectX && mouseX <= opt1.rectX + opt1.recW) && (mouseY >= opt1.rectY && mouseY <= opt1.rectY + opt1.recH))
  {
   
    fill(0,200,255);
    rect(opt1.rectX, opt1.rectY, opt1.recW, opt1.recH);
    fill(255,255,255);
    textSize(opt1.rectX/10);
    text(opt1.option, opt1.rectX+10, opt1.rectY+ opt1.rectX/10);
    
    if(mousePressed == true)
    {
      gamestate = 1;
      
      
    }
    
  }
    
     
  
  /* SECOND BUTTON */
  
  Button opt2;
  opt2 = new Button();
  
  opt2.rectX = width/4;
  opt2.rectY = height/8 + opt1.recH;
  opt2.recW = opt2.rectX;
  opt2.recH = opt2.rectX/4;
  opt2.option = "Engine Room";
  
  stroke(0,255,255);
  noFill();
  rect(opt2.rectX, opt2.rectY, opt2.recW, opt2.recH);
  textSize(opt2.rectX/10);
  text(opt2.option, opt2.rectX+10, opt2.rectY + opt2.rectX/10);
    
  
  if((mouseX >= opt2.rectX && mouseX <= opt2.rectX + opt2.recW) && (mouseY >= opt2.rectY && mouseY <= opt2.rectY + opt2.recH))
  {
   
    fill(0,200,255);
    rect(opt2.rectX, opt2.rectY, opt2.recW, opt2.recH);
    fill(255,255,255);
    textSize(opt2.rectX/10);
    text(opt2.option, opt2.rectX+10, opt2.rectY + opt2.rectX/10);
    
    
    
    if(mousePressed == true)
    {
      gamestate = 2;
    }
    
    
    
  }
  
  /* THIRD BUTTON */
  Button opt3; 
  opt3 = new Button();
  
  opt3.rectX = width/4;
  opt3.rectY = height/8 + (opt1.recH*2) ;
  opt3.recW = opt3.rectX;
  opt3.recH = opt3.rectX/4;
  opt3.option = "Weapons System";
  
  stroke(0,255,255);
  noFill();
  rect(opt3.rectX, opt3.rectY, opt3.recW, opt3.recH);
  textSize(opt3.rectX/10);
  text(opt3.option, opt3.rectX+10, opt3.rectY + opt3.rectX/10);
   
  if((mouseX >= opt3.rectX && mouseX <= opt3.rectX + opt3.recW) && (mouseY >= opt3.rectY && mouseY <= opt3.rectY + opt3.recH))
  {
   
    fill(0,200,255);
    rect(opt3.rectX, opt3.rectY, opt3.recW, opt3.recH);
    fill(255,255,255);
    textSize(opt3.rectX/10);
    text(opt3.option, opt3.rectX+10, opt3.rectY + opt3.rectX/10);
    
    if(mousePressed == true)
    {
      gamestate = 3;
    }
    
  }
  
  return gamestate;
}

//load planet information into planets arraylist
void loadPlanetTable()
{
 
  
  for(TableRow row : table.rows())
  {
     Planet pl1 = new Planet();
    
    pl1.planet = row.getString("planet");
    pl1.distance = row.getFloat("distance");
    pl1.diameter = row.getFloat("diameter");
    pl1.orbitperiod = row.getFloat("orbitperiod");
    pl1.orbitvel = row.getFloat("orbitvel");
    pl1.c = color(random(255), random(255), random(255));
    
    planets.add(pl1);
    
  }
  
}

void drawDiameterBarChart()
{
  
  float x = width/2 + 20;
  float y = 0;
  float boxW = width/2 -30;
  float boxH = height/2;
  float barW = boxW/12;
  float boxX = x + boxW/8;
  float boxY = height/2 + 170;
  float scale = boxH/maxVal();  
  
  noFill();
  rect(x, y + 10, boxW, boxH + 200);
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
    text(pl1.planet, boxX, boxY + 20);
    boxX = boxX + barW + 10;
    
  }
  fill(255,255,255);
  
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