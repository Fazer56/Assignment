float imgWMove = 0;
float imgTMove = 1;
float imgHMove = 0;

float mv1 =0;
float mv2 = 0;
float mv3 = 0;

void options()
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
  rect(opt1.rectX, mv1, opt1.recW, opt1.recH);
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
  opt2.option = "Engine Room";
  
  stroke(0,255,255);
  noFill();
  rect(mv2, opt2.rectY, opt2.recW, opt2.recH);
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
  textSize(opt3.rectX/12);
  text(opt3.option, opt3.rectX+10, opt3.rectY + opt3.rectX/10);
   
  if((mouseX >= opt3.rectX && mouseX <= opt3.rectX + opt3.recW) && (mouseY >= opt3.rectY && mouseY <= opt3.rectY + opt3.recH))
  {
   
    fill(0,200,255);
    rect(opt3.rectX, opt3.rectY, opt3.recW, opt3.recH);
    fill(255,255,255);
    textSize(opt3.rectX/12);
    text(opt3.option, opt3.rectX+10, opt3.rectY + opt3.rectX/10);
    
    if(mousePressed == true)
    {
      gamestate = 3;
    }
    
  }
  
  //return gamestate;
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

void charts()
{
  
  //Button 1
  Button opt1;
  opt1 = new Button();
  
  opt1.rectX = width/1.5 + 20;
  opt1.rectY = height/2 + 270;
  opt1.recW = 100;
  opt1.recH = 100;
  opt1.option = "Distance";
  
  stroke(0,255,255);
  noFill();
  rect(opt1.rectX, opt1.rectY, opt1.recW, opt1.recH);
  textFont(font3);
  textSize(20);
  text(opt1.option, opt1.rectX+10, opt1.rectY+50);
  
   
  if((mouseX >= opt1.rectX && mouseX <= opt1.rectX + opt1.recW) && (mouseY >= opt1.rectY && mouseY <= opt1.rectY + opt1.recH))
  {
   
    fill(255,150,25);
    rect(opt1.rectX, opt1.rectY, opt1.recW, opt1.recH);
    fill(255,255,255);
    textSize(20);
    text(opt1.option, opt1.rectX+10, opt1.rectY+50);
    
    if(mousePressed == true)
    {
      check = 0;
      
      
    }
    
  }
  
  //Button 2
  Button opt2;
  opt2 = new Button();
  
  opt2.rectX = opt1.rectX + 200;
  opt2.rectY = height/2 + 270;
  opt2.recW = opt1.recW;
  opt2.recH = opt1.recH;
  opt2.option = "Diameter";
  
  stroke(0,255,255);
  noFill();
  rect(opt2.rectX, opt2.rectY, opt2.recW, opt2.recH);
  textSize(20);
  text(opt2.option, opt2.rectX+10, opt2.rectY+50);
    
  
  if((mouseX >= opt2.rectX && mouseX <= opt2.rectX + opt2.recW) && (mouseY >= opt2.rectY && mouseY <= opt2.rectY + opt2.recH))
  {
   
    fill(255,150,25);
    rect(opt2.rectX, opt2.rectY, opt2.recW, opt2.recH);
    fill(255,255,255);
    textSize(20);
    text(opt2.option, opt2.rectX+10, opt2.rectY + 50);
    
    
    
    if(mousePressed == true)
    {
      check = 1;
    } 
  }
  
  //Button to change background Image
   Button b1 = new Button(width/3, height/2, imgWMove, imgHMove, "EXPLODING STAR!!", width/3 + 30, height/2 + 25, imgTMove);
   Button b2 = new Button(width/3, height/2 + 50, imgWMove, imgHMove, "GALAXY!!", width/3 + 30, height/2 + 75, imgTMove);
   Button b3 = new Button(width/3, height/2 + 100, imgWMove, imgHMove, "THE UNIVERSE!!", width/3 + 30, height/2 + 125, imgTMove);

   
   b1.drawButton();
   b2.drawButton();
   b3.drawButton();
   
      
   if((mouseX >= b1.x && mouseX < b1.x + b1.recW) && (mouseY >= b1.y && mouseY < b1.y + b1.recH))
   {
    
     if(mousePressed == true)
     {
       
       image = 0;
         
     }
     
   } 
   
   if((mouseX >= b2.x && mouseX < b2.x + b2.recW) && (mouseY >= b2.y && mouseY < b2.y + b2.recH))
   {
    
     if(mousePressed == true)
     {
       
       image = 1;
         
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
  
  
  noFill();
  stroke(0, 255, 255);
  ellipse(mouseX, mouseY, 20, 20);
  line(mouseX-20, mouseY, mouseX + 20, mouseY);
  line(mouseX, mouseY -20, mouseX, mouseY + 20);
  
  
}