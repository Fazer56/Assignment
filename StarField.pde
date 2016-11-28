class StarField extends Star
{
  
  float[] stars = new float[1000];
  
  void drawField()
  {
    for(int i = 0; i < stars.length; i++)
    {
      ellipse(x, y, 20 );
      
    }
    
  }
  
  
}