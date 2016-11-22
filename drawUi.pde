void drawUi()
{
  UI bottom = new UI();
  UI top = new UI();
  UI left = new UI();
  UI right = new UI();
  
  background(1,34,50);
  
  //bottom half of screen
  bottom.x = 0;
  bottom.y = height/1.5;
  bottom.uiWidth = width - 5;
  bottom.uiHeight = height/1.5;
  stroke(255, 100, 3);
  fill(0);
  rect(bottom.x, bottom.y, bottom.uiWidth, bottom.uiHeight);
  
  //top half of screen
  top.x = 0;
  top.y = 0;
  top.uiWidth = bottom.uiWidth;
  top.uiHeight = height/6;
  rect(top.x, top.y, top.uiWidth, top.uiHeight);
  fill(255,0,0);
  triangle((top.uiWidth/2) - 200, top.uiHeight, (top.uiWidth/2) + 200, top.uiHeight, top.uiWidth/2, top.uiHeight + 150);
 
  //left side
  fill(0);
  left.x = 0;
  left.y = bottom.uiHeight - top.uiHeight;
  left.uiWidth = bottom.uiWidth;
  left.uiHeight = top.uiHeight;
  arc(left.x , left.y-90 , left.y + left.uiHeight , left.y + left.uiHeight, radians(270), radians(450));
  
  //right side
  fill(0);
  right.x = bottom.uiWidth;
  right.y = left.y;
  right.uiWidth = bottom.uiWidth;
  right.uiHeight = left.uiHeight;
  arc(right.x , right.y-90 , right.y + right.uiHeight , right.y + right.uiHeight, radians(90), radians(270));
  
  
 
  
  
}