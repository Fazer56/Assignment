float x = 0.0f;
float y = 0.0f;
float starSize1 = 10.0f;
float starSize2= 5.0f;

void stars()
{
  
  float xDelta = 1.5;
  
  fill(255,255,255);
  ellipse(x+50 + starSize1, 20 + starSize1, starSize1, starSize1);
  ellipse(x+100 - starSize2, 80 - starSize2, starSize2, starSize2);
  ellipse(x+250 + starSize1, 100 + starSize1, starSize1, starSize1);
  ellipse(x+ 400 - starSize2, 270 - starSize2, starSize2, starSize2);
  ellipse(x + 310 + starSize1, 350 + starSize1, starSize1, starSize1);
  ellipse(x + 70 - starSize2 , 450 - starSize2, starSize2, starSize2);
  ellipse(x + 460 + starSize1, 150 + starSize1, starSize1, starSize1);
  ellipse(x + 230 - starSize2, 280 - starSize2, starSize2, starSize2);
  ellipse(x + 140 + starSize1, 30 + starSize1, starSize1, starSize1);
  
  float speed = 5;

     
   for(int i = 0; i < 100; i++)
   {
    if(frameCount % 12 == 0)
    {
    
      ellipse(random(0, width/2), random(0, height/2), starSize1, starSize1);
      ellipse(random(width/2, width), random(height/2, height), starSize2, starSize2);
      ellipse(random(0, width), random(0, height), starSize1, starSize1);
    }
   }
   
   if(keyPressed == true)
   {
    
     if(key == 'w' || key == 'W' )
     {
       
       speed+= 5;
       
     }
     
   }
   
    
   
  
  
  //x+=xDelta;
  
  
  if(keyPressed == true)
  {
    if(key == 'a' || key == 'A')
    {
     
      x--;
      
    }
    if(key == 'd' || key == 'D')
    {
     
      x++;
      
    }
    
    if(key == ' ');
    {
      gamestate = 0;
     
      
    }
    
    /*if(key == 'w' || key == 'W')
    {
      starSize2++;
      starSize1++;
      
    }
    
    if(key == 'x' || key == 'X')
    {
      starSize2--;
      starSize1--;
      
    }*/
    
    
    
   
    
  }
  
}