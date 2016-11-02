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
  
  options();
  
  
  
  
}

void options()
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
  
  println(mouseX + " x ");
  println(mouseY + " y " );
  println(opt1.rectX + " rectX ");
  println(opt1.rectY + " rectY ");
  println(opt1.recW + " recW ");
  println(opt1.recH + " recH ");
  
  
  if((mouseX >= opt1.rectX && mouseX <= opt1.rectX + opt1.recW) && (mouseY >= opt1.rectY && mouseY <= opt1.rectY + opt1.recH))
  {
   
    fill(0,200,255);
    rect(opt1.rectX, opt1.rectY, opt1.recW, opt1.recH);
    fill(255,255,255);
    textSize(20);
    text(opt1.option, opt1.rectX+10, opt1.rectY+30);
    
    if(mousePressed == true)
    {
      background(255,255,255);
    }
    
    
    
  }
  
}