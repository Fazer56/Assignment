class Star 
{
  //fields
  float x;
  float y;
  float radius;
  int points;
  color c;
  float uiW;
  float uiH;
  
  //default constructor
  Star()
  {
  }
  
  //parameterised constructor
  Star( float x, float y, float r, int points, color c)
  {
   
    this.x = x;
    this.y = y;
    this.radius = r;
    this.points = points;
    c = 0;
    
    drawStar();
  }
  
  void drawStar()
  {
    float thetaInc = TWO_PI / (points * 2);
    float lastX;
    float lastY;
    lastX = x;
    lastY = y -radius; 
    
    stroke(c);
    for (int i = 1 ; i <= (points * 2) ; i ++)
    {
      float theta = i * thetaInc;
      float zx, zy;
      float rn;
      if (i % 2 == 1)
      {
        rn = radius * 0.5f;
      }
      else
      {
        rn = radius;        
      }

      zx = x + sin(theta) * rn;
      zy = y -cos(theta) * rn;
      line(lastX, lastY, zx, zy);
      lastX = zx;
      lastY = zy;      
    }
 
  }
  
}