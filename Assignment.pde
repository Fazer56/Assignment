void setup()
{
  fullScreen();
//  size(950, 950);

}

float gamestate;

void draw()
{
  
  background(0);
  gamestate = 0;
  gameState(gamestate);
  menu();
  

}

void gameState(float gamestate)
{
 if(gamestate == 0)
 {
   background(0);
   
   
 }
 
 if(gamestate == 1)
 {
   stars();
  drawUi();
   
 }
 
 if(gamestate == 2)
 {
   
 }
  
  
}

void menu()
{
  
  Button opt1;
  opt1 = new Button();
  
  opt1.rectX = width/4;
  opt1.rectY = height/8;
  opt1.recW = opt1.rectX*2;
  opt1.recH = opt1.rectX/2;
  opt1.option = "Spaceship Cockpit";
  
  stroke(0,255,255);
  noFill();
  rect(opt1.rectX, opt1.rectY, opt1.recW, opt1.recH);
  textSize(20);
  text(opt1.option, opt1.rectX+10, opt1.rectY+30);
  
  
  
  
}