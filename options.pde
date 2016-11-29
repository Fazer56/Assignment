void options()
{
  
 // noFill();
 // stroke(0,255,255);
  //rect(width/2 -250, height/2 - 40, 400, 220); 
  fill(255,255,255);
  textFont(font, 30);
  textSize(40);
  text("FORTUNE INNOVATIONS\nSEMESTER 1\nOOP ASSIGNMENT", 40, height/5);
  
  
  /* FIRST BUTTON */
 
  Button opt1;
  opt1 = new Button();
  
  opt1.rectX = width/4;
  opt1.rectY = height/8;
  opt1.recW = opt1.rectX;
  opt1.recH = opt1.rectX/4;
  opt1.option = "Spaceship Cockpit";
  
  stroke(0,255,255);
  fill(45, 60, 105);
  rect(opt1.rectX, mv1, opt1.recW, opt1.recH);
  fill(255,255,255);
  textFont(font2);
  textSize(opt1.rectX/12);
  text(opt1.option, opt1.rectX+10, mv1 + opt1.rectX/10);
   
  if((mouseX >= opt1.rectX && mouseX <= opt1.rectX + opt1.recW) && (mouseY >= opt1.rectY && mouseY <= opt1.rectY + opt1.recH))
  {
   
    fill(0,200,255);
    rect(opt1.rectX, mv1, opt1.recW, opt1.recH);
    fill(255,255,255);
    textSize(opt1.rectX/12);
    text(opt1.option, opt1.rectX+10, mv1+ opt1.rectX/10);
    
    if(mousePressed == true)
    {
      gamestate = 1;
            
    }
    
  }
  
  mv1++;
  
  if(mv1 >= opt1.rectY)
  {
    mv1 = opt1.rectY;
    
  }
      
  /* SECOND BUTTON */
 
  Button opt2;
  opt2 = new Button();
  
  opt2.rectX = width/4;
  opt2.rectY = height/8 + opt1.recH;
  opt2.recW = opt2.rectX;
  opt2.recH = opt2.rectX/4;
  opt2.option = "STAR MAP";
  
  stroke(0,255,255);
  fill(45, 60, 105);
  rect(mv2, opt2.rectY, opt2.recW, opt2.recH);
  fill(255,255,255);
  textSize(opt2.rectX/12);
  text(opt2.option, mv2+10, opt2.rectY + opt2.rectX/10);
    
  
  if((mouseX >= opt2.rectX && mouseX <= opt2.rectX + opt2.recW) && (mouseY >= opt2.rectY && mouseY <= opt2.rectY + opt2.recH))
  {
   
    fill(0,200,255);
    rect(mv2, opt2.rectY, opt2.recW, opt2.recH);
    fill(255,255,255);
    textSize(opt2.rectX/12);
    text(opt2.option, mv2+10, opt2.rectY + opt2.rectX/10);
      
    if(mousePressed == true)
    {
      gamestate = 2;
    }    
  }
  
  mv2+=3.5;
  
  if(mv2 >= opt1.rectX)
  {
    mv2 = opt1.rectX;    
  }
}