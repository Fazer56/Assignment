float gauge = 248;
float counter = 100;

void drawUi()
{
  UI bottom = new UI();
  UI top = new UI();
  UI left = new UI();
  UI right = new UI();
  
  background(1,34,50);
  //bottom half of screen
  bottom.x = 0;
  bottom.y = height/1.5;
  bottom.uiWidth = width - 5;
  bottom.uiHeight = height/1.5;
  stroke(255, 100, 3);
  fill(0);
  rect(bottom.x, bottom.y, bottom.uiWidth, bottom.uiHeight);
  
  //top half of screen
  top.x = 0;
  top.y = 0;
  top.uiWidth = bottom.uiWidth;
  top.uiHeight = height/6;
  rect(top.x, top.y, top.uiWidth, top.uiHeight);
  fill(255,0,0);
  triangle((top.uiWidth/2) - 200, top.uiHeight, (top.uiWidth/2) + 200, top.uiHeight, top.uiWidth/2, top.uiHeight + 150);
 
  //left side
  fill(0);
  left.x = 0;
  left.y = bottom.uiHeight - top.uiHeight;
  left.uiWidth = bottom.uiWidth;
  left.uiHeight = top.uiHeight;
  arc(left.x , left.y-90 , left.y + left.uiHeight , left.y + left.uiHeight, radians(270), radians(450));
  fill(255,100,3);
  arc(0, 180, 467 , 180, radians(270), radians(360));
  arc(0, 720, 467 , 180, radians(0), radians(90));
  
  //right side
  fill(0);
  right.x = bottom.uiWidth;
  right.y = left.y;
  right.uiWidth = bottom.uiWidth;
  right.uiHeight = left.uiHeight;
  arc(right.x , right.y-90 , right.y + right.uiHeight , right.y + right.uiHeight, radians(90), radians(270));
  fill(255,100,3);
  arc(1915, 180, 465 , 180, radians(180), radians(270));
  arc(1915, 720, 465 , 180, radians(90), radians(180));
  
  //draw some buttons on screen
  Button b1 = new Button();
  Button b2 = new Button();
  Button b3 = new Button();
  
  //Button 1 
  b1.x = width/4;
  b1.y = height/1.4;
  b1.recW = 200;
  b1.recH = 100;
  b1.option = "REFUEL";
  
  noStroke();
  fill(0,255,255);
  rect(b1.x, b1.y, b1.recW, b1.recH);
  fill(255,255,255);
  textSize(30);
  textFont(font2);
  text(b1.option, b1.x + 3, b1.y, b1.recW, b1.recH);
  
  if((mouseX >= b1.x && mouseX < b1.x + b1.recW) && (mouseY >= b1.y && mouseY < b1.y + b1.recH))
  {
    
    fill(0,255,0);
    rect(b1.x, b1.y, b1.recW, b1.recH);
    fill(255,255,255);
    text(b1.option, b1.x + 3, b1.y, b1.recW, b1.recH);
    
    if(mousePressed == true)
    {
      fill(0,255,0);
      rect(b1.x, b1.y, b1.recW, b1.recH);
      rect(b1.x+2, b1.y+2, b1.recW, b1.recH);
      
      
    }
    
  }
  
  //Button 2 
  b2.x = b1.x + 300;
  b2.y = height/1.4;
  b2.recW = b1.recW;
  b2.recH = 100;
  
  noStroke();
  fill(0,255,255);
  rect(b2.x, b2.y, b2.recW, b2.recH);
  
  if((mouseX >= b2.x && mouseX < b2.x + b1.recW) && (mouseY >= b2.y && mouseY < b2.y + b2.recH))
  {
    
    fill(255, 0,0);
    rect(b2.x, b2.y, b2.recW, b2.recH);
    
    if(mousePressed == true)
    {
     
      rect(b2.x, b2.y, b2.recW, b2.recH);
      rect(b2.x+2, b2.y+2, b2.recW, b2.recH);
      
      
    }
    
  }
  
  //Button 3
  b3.x = b2.x + 300;
  b3.y = height/1.4;
  b3.recW = b1.recW;
  b3.recH = 100;
  
  noStroke();
  fill(0,255,255);
  rect(b3.x, b3.y, b3.recW, b3.recH);
  
  if((mouseX >= b3.x && mouseX < b3.x + b1.recW) && (mouseY >= b3.y && mouseY < b3.y + b3.recH))
  {
    
    fill(0, 0,255);
    rect(b3.x, b3.y, b3.recW, b3.recH);
    
    if(mousePressed == true)
    {
     
      rect(b3.x, b3.y, b3.recW, b3.recH);
      rect(b3.x+2, b3.y+2, b3.recW, b3.recH);
      
      
    }
    
  }
  
  //draw fuel gauge
  UI fuel = new UI();
  fuel.x = 200;
  fuel.y = height/6 - 120;
  fuel.uiWidth = 250;
  fuel.uiHeight = 50;
  
  
  strokeWeight(3);
  stroke(0,255,255);
  noFill();
  rect(fuel.x, fuel.y, fuel.uiWidth, fuel.uiHeight);
  noStroke();
  fill(255,255,0);
  rect(fuel.x+1, fuel.y, gauge, fuel.uiHeight-2);
  
  fill(0, 255,255);
  textFont(font, 48);
  text("Fuel Gauge", fuel.x, fuel.y - 10);
  text("%" + counter, fuel.x +(48*5), fuel.y - 10);
  
   if(frameCount % 12 == 0)
   {
    gauge-=2;
    counter--;
    
    if(gauge <= 0)
    {
     
      gauge = 0;
      
    }
    
    if(counter <= 0)
    {
     
      counter = 0;
      
    }
    
   }
   
   if(counter < 20)
   {
      
        noFill();
        stroke(255,0,0);
        rect(width/2 -150, height/2 - 40, 300, 150); 
        fill(255,0,0);
        textFont(font, 25);
        text("Warning ! \n Fuel Low ! \nSwitch to\nEngine room to refuel !", width/2 - 130, height/2);
      
      
   }
  
  if(keyPressed == true)
  {
    if(key == ' ')
    {
      gamestate = 0;
    } 
  }
  
}