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
    
    if(key == 'w' || key == 'W')
    {
      starSize2++;
      starSize1++;
      
    }
    
    if(key == 'x' || key == 'X')
    {
      starSize2--;
      starSize1--;
      
    }
    
    
    
   
    
  }
  
}