float theta = 0;

class Galaxy
{
  float speed;
  PVector location;
  float radius;
  //float theta;
  float x;
  float y;
  float z;
  color c;
  
  
  //default constructor
  Galaxy()
  { 
  }
  
    //parameterised constructor
  Galaxy(float speed, float x, float y, float z, float r)
  {
    this.speed = speed;
    this.x = x;
    this.y = y;
    this.z = z;
    this.c = color(random(255), random(255), random(255)); 
    
    this.radius = r;
    //this.theta = theta;
    
    createSphere(y);
    
  }
  
 void createSphere(float y)
  {
    lights();
    float cx; 
    float cz;
    cx = x + sin(theta) * radius;
    cz = z + cos(theta) * radius;
    
    location = new PVector(cx, y, cz); 
     
    pushMatrix(); 
    
    lights();
    translate(location.x, location.y, location.z);
    sphereDetail(35);
    fill(c);
    sphere(radius);
    popMatrix();
    fill(255,255,255);
    
  }
  
  void update()
  {
    theta+=speed;
  }
  
}
  