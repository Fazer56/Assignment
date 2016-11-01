
void menu()
{
  
  float x = 0.0f;
  float y = 0.0f;
  float rectX = width/4;
  float rectY = height/4;
  float recW = width /8;
  float recH = height/8;
  
  String options[] = {"1. Spaceship Cockpit", "2. Engine Room", "3. Weapons Defence", "4. Exit"};
  
  
  
  for(int i = 0; i < options.length; i++)
  {
    stroke(62, 67, 67);
    //fill(44, 47, 185);
    noFill();
    rect(rectX, rectY + y, recW + recW, recH);
    textSize(40);
    text(options[i], rectX, rectY + y + 50);
    y+=150;
     
    
  }
  
  /*if(mouseX = */
  
}