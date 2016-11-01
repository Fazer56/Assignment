class PVector 
{
  float x;
  float y;
  
  PVector(float x1, float y1)
  {
    x = x1;
    y = y1;
  }
  
  //adding PVectors
  void add(PVector v)
  {
    y = y + v.y;
    x = x + v.x;
  }
}