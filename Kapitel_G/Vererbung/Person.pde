abstract class Person implements ColoredPart, MovingPart
{
  float x,y;
  float speed;
  color col;
  char colKey;
  
  Person(){}
  
  Person(float x_, float y_, float speed_, color c, char cKey)
  {
    this.x = x_;
    this.y = y_;
    this.speed = speed_;
    this.col = c;
    this.colKey = cKey;
  }
  
  abstract void drawPerson();
  
  void printPosition()
  {
    println(x+" / " + y);
  }
  
} 
