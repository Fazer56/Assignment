void drawGalaxy()
{
  lights();
  noStroke();
  Galaxy g1 = new Galaxy(0.1, 400, height/1.5, 100, 100, color(19, 24, 255));
 // Galaxy g2 = new Galaxy(0.1, 360, height/2, 100, 100, color(255, 24, 25));
  
  g1.createSphere(height/1.5);
  //g2.createSphere(height/2);
  g1.update();
  //g2.update();
}