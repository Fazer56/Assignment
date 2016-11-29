void drawStarsGrid()
{
  
  float lineW = 80;
  fill(0);
  stroke(random(0,255), 100, (random(255)));
  rect(width/4 - lineW, 100 - lineW, gridX, gridY);
  
  gridY+=3;
  gridX+=3;
  
  if(gridX >= 1000)
  {
    gridX = 1000;
    
  }
  if(gridY >= 1000)
  {
    gridY = 1000;
    
  }
  if(gridY == 1000)
  {
    
    starMap();
    
  }
  
  if(keyPressed == true)
  {
    if(key == ' ')
    {
      gamestate = 0;
      gridY = 0;
      gridX = 0;
      imgWMove = 0;
      imgTMove = 1;
      imgHMove = 0;
      mv1 =0;
      mv2 = 0;
      mv3 = 0;
      movChartX = 0; 
      movChartY = 0; 
      pMove = 0;
    }   
  } 
  
}
//starMap for mapping loading stars 
void starMap()
{
  Star str = new Star();
   
  float x = width/4;
  float y = 100;
  float xc;
  float yc;
  float border = x + 800;
  float borderH = y + 800;
  float lineY = y;
  float lineX = x;
  float lineW = 80;
  float lineH = 80;

  for(int i = 0; i < 11; i ++)
  {
    line(x, lineY, x + 800, lineY);
    line(lineX, y, lineX, y + 800);
    
    lineY+=lineH;
    lineX+=lineW;
  }

  for(int i =0; i < stars.size(); i++)
  {
    str = stars.get(i);
    xc = map(str.x, 0, width, x, border);
    yc = map(str.y, 0, height, y, borderH);
    stroke(255,255,0);
    line( xc, yc, xc + 10, yc);
    line( xc +5, yc -5, xc +5, yc +5);
    stroke(0,255,255);
    noFill();
    ellipse(xc + 5, yc, 20, 20);
    fill(255,255,255);
    textAlign(LEFT, CENTER);
    text(xc, xc + 20, yc);
  }  
  fill(255,255,255);
  textFont(font2);
  text("Loading Screen STARMAP", width/4, 80);
  textSize(20);
  text("SpaceBar To return", width/4, height/1.1);
  
}