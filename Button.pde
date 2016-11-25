class Button
{
  
  float x ;
  float y ;
  float rectX;
  float rectY;
  float recW;
  float recH;
  String option;
  float txtSize;
  float txtX;
  float txtY;
  
  //default constructors
  Button()
  {   
  }
  
  //paremeterised constructor
  Button(float x, float y, float bWidth, float bHeight, String bName, float txX, float txY, float txt)
  {
    this.x = x;
    this.y = y;
    this.recW = bWidth;
    this.recH = bHeight;
    this.option = bName;
    this.txtX = txX;
    this.txtY = txY;
    this.txtSize = txt;
    
    drawButton();
  }
  
  void drawButton()
  {
   
  
    stroke(0,255,255);
    noFill();
    rect(x, y, recW, recH);
    textSize(txtSize);
    fill(255,255,255);
    text(option, txtX, txtY);
     
    if((mouseX >= x && mouseX <= x + recW) && (mouseY >= y && mouseY <= y + recH))
    {
     
      fill(0,200,255);
      rect(x, y, recW, recH);
      textSize(txtSize);
      fill(255,255,255);
      text(option, txtX, txtY);
      
      
    }
      
      
    
  }

  
}