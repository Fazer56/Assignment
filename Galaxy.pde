class Galaxy
{
  float speed;
  PVector location;
  float radius;
  float x;
  float y;
  float z;
  color c;
  
  
  //default constructor
  Galaxy()
  { 
  }
  
    //parameterised constructor
  Galaxy(float speed, float x, float y, float z, float r, color c)
  {
    this.speed = speed;
    this.x = x;
    this.y = y;
    this.z = z;
    this.c = c;
    
    this.radius = r;
   
    
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
  