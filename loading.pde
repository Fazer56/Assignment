
float load = 0;
float xz = 0;
float yz = 0;
float tz = 0; 
float pz = 0;




float selectedX;
float selectedY;


void loading()
{
  
  UI container = new UI();
  UI loadBar = new UI();

  String init = "Initializing..." ;
  
  float c =  map(mouseX, 0, 1980, 0, 255);
  float d = map(mouseY, 0, 1080, 0, 255);
  
  noCursor();
  background(c, d, 200);
  
  container.x = width/2.5;
  container.y = height/2;
  container.uiWidth = 200;
  container.uiHeight = 50;
  
  loadBar.x = container.x+1;
  loadBar.y = container.y+1;
  loadBar.uiHeight = container.uiHeight -2;
  
  strokeWeight(1);
  stroke(0, 255, 255);
  line(mouseX, 0, mouseX, height);
  line(0, mouseY, width, mouseY);
  fill(0,255,255);
  ellipse(mouseX, mouseY, 20, 20);
  
  strokeWeight(3);
  stroke(22,36,90);
  fill(22,36,90);
  arc(loadBar.x, loadBar.y + 24, 50, 50, radians(90), radians(270));
  arc(loadBar.x + container.uiWidth, loadBar.y + 24, 50, 50, radians(270), radians(450));
  rect(container.x, container.y, container.uiWidth, container.uiHeight);
  textFont(font3);
  textSize(24);
  text(init, loadBar.x, loadBar.y + 80);
  
  noStroke();
  fill(134, 19, 23);
  rect(loadBar.x, loadBar.y, load, loadBar.uiHeight);
  
  
  
  if(frameCount %6 ==0)
  {
    load++;
    
  }
  
  if(load == 199)
  {
    gamestate = 0;
    
  }
  
  
  noFill(); 
  stroke(0, 255, 255);
  strokeWeight(2);
  stroke(0, 255, 255, 100);
  ellipse(width/2 - 100, height/3.1, xz, 360);
  strokeWeight(5);
  ellipse(width/2 - 100, height/3.1, 360, yz);
  ellipse(width/2- 100, height/3.1, pz, 360);
  strokeWeight(5);
  ellipse(width/2 - 100, height/3.1, 360, tz);
 
  
    xz+=1;
    yz+=1;
    pz+=2;
    tz+=2;
  
    if(xz >= 360)
    {
  
       xz = -xz;
    }
  
   if(pz >= 360)
   {
  
     pz = -pz;
   }
     
   if(tz >= 360)
   {
  
     tz = -tz;
   }
   
   if(yz >= 360)
   {
  
     yz = -yz;
   }

   
   //drawStars 
   if(mousePressed == true)
   {
     Star str = new Star();
     selectedX = mouseX;
     selectedY = mouseY;
     str.x = selectedX;
     str.y = selectedY;
     str.radius = 40;
     str.points = 10;
     str.c = color(random(0,255), random(0,255), random(0,255));
     stars.add(str); 
   }
   Star str = new Star();   
   for(int i = 0; i < stars.size(); i++)
   {
      str = stars.get(i);
      str.drawStar();
      fill(c);
      text(selectedX + "  X coordinate", selectedX + 50, selectedY + 10);
      text(selectedY + "  Y coordinate", selectedX + 50, selectedY + 30);
   }
   
   
   /*
   Button b1 = new Button(width/1.5, height/3, 250, 150, "New Button", width/1.5 + 30, height/3 + 100, 20);
   
   b1.drawButton();
   
   if((mouseX >= b1.x && mouseX < b1.x + b1.recW) && (mouseY >= b1.y && mouseY < b1.y + b1.recH))
   {
    
     if(mousePressed == true)
     {
       
       gamestate = 0;
       
     }
     
   } */
   
   
}
   
  