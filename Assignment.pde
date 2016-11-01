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