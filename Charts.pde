void charts()
{
  
  //Button 1
  textFont(font3);
  Button opt1 = new Button(width/1.5 + 20, height/2 + 270, 100, 100, "Distance", width/1.5 + 30, height/2 + 330, 20, color(45, 60, 105), color(0,200,255));
  
   opt1.drawButton();
   
  if((mouseX >= opt1.x && mouseX <= opt1.x + opt1.recW) && (mouseY >= opt1.y && mouseY <= opt1.y + opt1.recH))
  {
    
    if(mousePressed == true)
    {
      check = 0;
      
    }
    
  }
  
  //Button 2
  Button opt2 = new Button(opt1.x + 200, height/2 + 270, 100, 100, "Diameter", opt1.x + 210, height/2 + 330, 20, color(45, 60, 105), color(0,200,255));
  opt2.drawButton();
  
  if((mouseX >= opt2.x && mouseX <= opt2.x + opt2.recW) && (mouseY >= opt2.y && mouseY <= opt2.y + opt2.recH))
  {    
    
    if(mousePressed == true)
    {
      check = 1;
    } 
  }
  
  //Button to change background Image
   Button b1 = new Button(width/3, height/2, imgWMove, imgHMove, "GALAXY!!", width/3 + 30, height/2 + 25, imgTMove, color(45, 60, 105), color(0,200,255));
   Button b2 = new Button(width/3, height/2 + 50, imgWMove, imgHMove, "EXPLODING STAR", width/3 + 30, height/2 + 75, imgTMove, color(45, 60, 105), color(0,200,255));
   Button b3 = new Button(width/3, height/2 + 100, imgWMove, imgHMove, "THE UNIVERSE!!", width/3 + 30, height/2 + 125, imgTMove, color(45, 60, 105), color(0,200,255));
   
   b1.drawButton();
   b2.drawButton();
   b3.drawButton();
   
      
   if((mouseX >= b1.x && mouseX < b1.x + b1.recW) && (mouseY >= b1.y && mouseY < b1.y + b1.recH))
   {
    
     if(mousePressed == true)
     {
       
       image = 1;
         
     }
     
   } 
   
   if((mouseX >= b2.x && mouseX < b2.x + b2.recW) && (mouseY >= b2.y && mouseY < b2.y + b2.recH))
   {
    
     if(mousePressed == true)
     {
       
       image = 0;
         
     }
     
   } 
   
   if((mouseX >= b3.x && mouseX < b3.x + b3.recW) && (mouseY >= b3.y && mouseY < b3.y + b3.recH))
   {
    
     if(mousePressed == true)
     {
       
       image = 2;
         
     }
     
   } 
   
   imgWMove ++;
   imgTMove +=0.1;
   imgHMove ++;
   
   if(imgWMove >= 220)
   {
     imgWMove = 220;
     
   }
  
   
   if(imgHMove >= 50)
   {
     imgHMove = 50;
     
   }
   
   if(imgTMove >= 20)
   {
     imgTMove = 20;
     
   }  
}

//draw Graphs and barchart
void graphRect()
{
  float x = width/2 + 20;
  float y = 10;
  float boxW = width/2 -30;
  float boxH = height/2 + 250;
  float cx;
  float cy;
  float radius = 50;
  
  strokeWeight(2);
  fill(0);
  rect(x, y , movChartX, movChartY);
 
  movChartX+=2.3;
  movChartY+=2;
  
  if(movChartX < boxW)
  {   
    cx = (width/2 + 50) + sin(ltheta) * radius;
    cy = (height/2 + 30) + cos(ltheta) * radius;
    
    fill(255,255,255);
    textSize(30);
    text("Setting Up", cx -50, cy -30);
    
    
    for(int i = 0; i < 10; i ++)
    {
      fill(random(0, 255));
      ellipse(cx, cy, 20, 20);
    }
    
    ltheta+=0.05;
  }
  
  if(movChartX >= boxW)
  {
    movChartX = boxW;
    
  }
  
  if(movChartY >= boxH)
  {
    movChartY = boxH;
    
  }
  if(movChartY == boxH)
  {
    trendGraph();
    
  } 
}

void trendGraph()
{
  float x = width/2 + 20;
  float y = 10;
  float boxW = width/2 -30;
  float boxH = height/2 + 250;
  float barW = boxW/12;
  float boxX = x + boxW/8;
  float boxY = height/2 + 170;
  float scale = (boxH-250)/distMaxVal(); 
  float bx = barW + 10;
  float txtX = boxX;
  
  textFont(font2);
  fill(255,255,255);
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
      background(0);
      pl1.planetInfo(); 
    }

    boxX = boxX + barW;
    txtX = txtX + bx;
  }
}

void drawDiameterBarChart()
{
  
  float x = width/2 + 20;
  float y = 10;
  float boxW = width/2 -30;
  float boxH = height/2 + 250;
  float barW = boxW/12;
  float boxX = x + boxW/8;
  float boxY = height/2 + 170;
  float scale = (boxH-250)/maxVal();  
  
  movChartX+=2.3;
  movChartY+=2;
  
  if(movChartX >= boxW)
  {
    movChartX = boxW;
    
  }
  
  if(movChartY >= boxH)
  {
    movChartY = boxH;
    
  }
  
  strokeWeight(2);
  fill(0);
  rect(x, y , boxW, boxH);
  textFont(font2);
  textSize(40);
  fill(255,255,255);
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