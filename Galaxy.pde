class Galaxy
{
  float speed;
  PVector location;
  float radius;
  float theta;
  float x;
  //float y;
  float z;
  
  
  //default constructor
  Galaxy()
  { 
  }
  
    //parameterised constructor
  Galaxy(float speed, float x, float y, float z,  float theta, float r)
  {
    this.speed = speed;
    this.x = x;
   // this.y = y;
    this.z = z;
    location = new PVector(x, y, z);
    this.radius = r;
    this.theta = theta;
    
    createSphere();
    
  }
  
 void createSphere()
  {
    lights();
    float cx; 
    float cz;
     location.x = sin(theta) * radius;
     location.z = cos(theta) * radius;
    
    lights();
    translate(location.x, location.y, location.z);
    sphereDetail(35);
    fill(255,255,255);
    sphere(radius);
    theta+=speed;
    
  }
  
}
  