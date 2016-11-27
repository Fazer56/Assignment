//SPACESHIPCOCKPIT
float gauge = 248;
float counter = 100;
boolean refill = false;


float move = 0;
float move2 = 0;
float move3 = 0;
float move4 = 0;
float move5 = 0;
float move6 = 0;
boolean lie = false;

void drawUi()
{
  UI bottom = new UI();
  UI top = new UI();
  UI left = new UI();
  UI right = new UI();
  
  background(1,34,50);
  
  navDials();
  
  ellipse(mouseX, mouseY, 10, 10);  
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
  //Button 1 
  textFont(font);
  Button b1 = new Button(width/4, height/1.47, 200, 100, "REFUEL", width/4 + 5, height/1.5 + 50, 28, color(255,0, 0), color(45, 60, 105));
  b1.drawButton();
  
  if((mouseX >= b1.x && mouseX < b1.x + b1.recW) && (mouseY >= b1.y && mouseY < b1.y + b1.recH))
  {
    
    if(mousePressed == true)
    {
      fill(45, 60, 105);
      rect(b1.x+2, b1.y+2, b1.recW, b1.recH);
      refill = true;
      
    }
    
  }
  
  //Button 2 
  Button b2 = new Button(b1.x + 300, b1.y, 200, 100, "SOUNDWAVE", b1.x + 305, b1.txtY, 28, color(0, 255, 0), color (45, 60, 105));
  b2.drawButton();
  
  if((mouseX >= b2.x && mouseX < b2.x + b1.recW) && (mouseY >= b2.y && mouseY < b2.y + b2.recH))
  {
    
    if(mousePressed == true)
    {
     
      fill(45, 60, 105);
      rect(b2.x+2, b2.y+2, b2.recW, b2.recH);  
      
    }
    
  }
  
  //Button 3
  Button b3 = new Button(b2.x + 300, b1.y, 200, 100, "NAVIGATION", b2.x + 305, b1.txtY, 28, color(180, 20, 220), color (45, 60, 105));
  b3.drawButton();

  
  if((mouseX >= b3.x && mouseX < b3.x + b1.recW) && (mouseY >= b3.y && mouseY < b3.y + b3.recH))
  {
    if(mousePressed == true)
    {
     
      fill(45, 60, 105);
      rect(b3.x+2, b3.y+2, b3.recW, b3.recH);
       
    }
    
  }

 
 //draw radar
 
  
  
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
    gauge-=2.5;
    counter--;
    
    if(gauge <= 0)
    {
     
      gauge = 0;
      
    }
    if(refill == true)
    {
      gauge = 248;
      counter = 100;
      refill = false;
      
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
        fill(random(100,255),0,0);
        textFont(font, 25);
        text("Warning ! \n Fuel Low ! \nSwitch to\nEngine room to refuel !", width/2 - 130, height/2);
      
      
   }
   
   planMap();
  
  if(keyPressed == true)
  {
    if(key == ' ')
    {
      gamestate = 0;

    } 

      
  } 
}

float[] trend = { random(0,50), random(0, 50), random(0, 50), random(0, 50), random(0, 50), random(0, 50), random(0, 50), random(0, 50), random(0, 50), random(0, 50)};

void planMap()
{
  UI trd = new UI(width/1.5-50, 100, 40, 25);
  
  for(int i =0; i < trend.length-1; i ++)
  {
    strokeWeight(3);
    stroke(255,255,255);
    fill(255,0,0);
    ellipse(trd.x, trd.y - trend[i], trd.uiHeight, trd.uiHeight);
    line(trd.x, trd.y - trend[i], trd.x + trd.uiWidth, trd.y - trend[i+1]);
    trd.x += trd.uiWidth;
    
    if(mouseX >=trd.x && mouseX <= trd.x + trd.uiHeight && mouseY >= trd.y - trend[i] && mouseY <= trd.y - trend[i] + trd.uiHeight)
    {
      
      lights();
      fill(random(255), random(255), random(255));
      noStroke();
      pushMatrix();
      translate(width/2, height/2);
      rotateZ(rev);
      sphere(2000 * (2000/maxVal()));
      popMatrix();
        
      
    }
    
  }
  
  textSize(30);
  text("Linear Planetary Map", trd.x - 700, trd.y);
  noFill();
  rect(trd.x - 400, trd.y + 20, 500, -100);
  
}

void navDials()
{
 
 Radar r = new Radar(width/2, height - 120, 110, 0.1);
 r.update();
 r.render();
 
 
 UI radar = new UI();
 radar.x = width/2;
 radar.y = height - 120;
 radar.uiWidth = 220;
 
 for(int i = 0; i < 4; i++)
 {
   noFill();
   stroke(0, 255, 250);
   strokeWeight(1);
   ellipse(radar.x, radar.y, radar.uiWidth, radar.uiWidth);
   radar.uiWidth-=50;
   
 }
  
 UI life = new UI();
 
 life.x = width/2 + 200;
 life.y = radar.y;
 float lineX = life.x - 30;
 float lineY = life.y - 50;
 float speed =3;
 float lineW = 30;
 float lineH = 15;
 
 
 //////////////////////////////////////////////////////////////////////////////
 fill(45, 60, 105);
 rect(life.x-30, life.y-50, 300, 150);

 stroke(0,255,255);
 for(int i = 0; i < 10; i++)
 {
   line(width/2+170, lineY + 5, width/2 + 470, lineY + 5);
   line(lineX, height - 170, lineX, height - 20);
   
   lineY+=lineH;
   lineX+=lineW;
   
 }
 
 strokeWeight(3);
 stroke(255,0,0);
 line(life.x, life.y, life.x + move, life.y);
 move+=speed;
 
 if(move >= 30)
 {
   move = 30;
   line(life.x + 30, life.y, life.x + 30 + move2, life.y + move2);
   move2+=speed;
 }
 if(move2 >= 30)
 {
     move2 = 30;
     line(life.x + 60, life.y + 30, life.x + 60 + move3, life.y + 30 - move3);
     move3+=speed;
 }
 if(move3 >=60)
 {
       move3 = 60;
       line(life.x + 120, life.y - 30, life.x + 120 + move4, life.y - 30 + move4);
       move4+=speed;
 }
 if(move4 >=60)
 {
   move4 = 60;
   line(life.x + 180, life.y + 30, life.x + 180 + move5, life.y + 30 - move5);
   move5+=speed;
 }
 if(move5 >=30)
 {
    move5 = 30;
    line(life.x + 210, life.y , life.x + 210 + move6, life.y);
    move6+=speed;
 }
 if(move6 >= 50)
 {
   move6 = 50;
   lie = true;
 }
 
  if(lie == true)
 {
   move = 0;
   move2 = 0;
   move3 = 0;
   move4 = 0;
   move5 = 0;
   move6 = 0;
   lie = false;
   
 }
  
}