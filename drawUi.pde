float uiX;
float uiY;
float a;
float h;
float o;
float r;
float thetaRadar = 0;


float yes = 10;

void drawUi()
{
  uiX = 0.0f;
  uiY = height;
  float triY = height/3 + 8;
  float recW = (float)width/3;
  float recH = height/ 3;
  
  
  r = recW/2;
  
  a = cos(thetaRadar)*r;
  o = sin(thetaRadar)*r;
  
  
  
  
  
  fill(44, 47, 185);
  strokeWeight(3);
  stroke(0, 255, 255);
  rect(uiX+1, uiY-2, recW, -recH);
  //rect(uiX+ 300, uiY-2, recW, -recH);
 
  //rect(uiX+ recW, uiY-2, recW, -recH);
  triangle(uiX, triY+triY, 300, triY+triY, uiX, 300); 
  
  
  
  
   for(int i = 0; i < 10; i++)
  {
     fill(0);
     arc(uiX+450, uiY-300, recW, recH, radians(0), radians(180));
     recW-=40;
     recH-=40;
     
     fill(0,255,0);
     arc(uiX + 450, uiY - 300 ,  316 , 316, radians(0), radians(45));
    
  }
  
  //line(uiX + 450, uiY - 300, uiX + 450 + a, uiY -300 + o);
  
  
    
    thetaRadar++;
  
  
  //rect(x, y+y, 300, 300);
  
}