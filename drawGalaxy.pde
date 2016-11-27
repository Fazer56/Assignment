void drawGalaxy()
{
  lights();
  noStroke();
  Galaxy g1 = new Galaxy(0.1, 300, height/1.5, 100, 100);
  Galaxy g2 = new Galaxy(0, 360, height/1.5, 100, 100);
  
  g1.createSphere(height/1.5);
  g2.createSphere(height/1.5);
  g1.update();
  g2.update();
}