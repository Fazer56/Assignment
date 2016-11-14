


void drawUi()
{
  radar();
 
}

void radar()
  {
    float ellX = width/2;
    float ellY = height/2;
    float size = 500;
    float b = 50;
    float a;
    a =5;
    
    for(int i = 0; i<8; i++)
    {
      noFill();
      ellipse(width/2,height/2, size, size);
      size-=b;
     
     
    }
    
    
    if(frameCount % 6 == 0)
    {
     
      translate(width/2, height/2);
      rotate(radians(x));
      stroke(255, 3, 7);
      line(20, 20, 150, 140);
      
      if(frameCount % 90 ==0)
      {
       
        background(0);
        
      }
      
  
      
      
      x+=a;
      
    }
  }