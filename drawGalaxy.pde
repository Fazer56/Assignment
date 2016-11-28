void drawGalaxy()
{
  lights();
  noStroke();
  Galaxy g1 = new Galaxy(0.1, 400, height/1.5, 100, 100, color(19, 24, 255));
  
  g1.createSphere(height/1.5);
  g1.update();
}