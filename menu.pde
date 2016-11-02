class Button
{
  
  float x ;
  float y ;
  float rectX;
  float rectY;
  float recW;
  float recH;
  String option;
  
  //default constructors
  Button()
  {
     x = 0.0f;
     y = 0.0f; 
     rectX = 0.0f;
     rectY = 0.0f;
     option = "";
     
  }
  
  //parameterised constructors
  Button(float x, float y, float rectX, float rectY, float recW, float recH, String opt)
  {
    this.x = 0;
    this.y = 0;
    this.rectX = 0;
    this.rectY = 0;
    this.recW = 0;
    this.recH = 0;
    this.option = opt;
    
    
  }
  
}