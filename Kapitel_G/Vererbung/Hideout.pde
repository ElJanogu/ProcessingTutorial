abstract class Hideout implements ColoredPart
{
  float x,y;
  color col;
  char colKey;
  
  Hideout(){}
  
  Hideout(float x_, float y_, color c, char cKey)
  {
    this.x = x_;
    this.y = y_;
    this.col = c;
    this.colKey = cKey;
  }
  
  abstract void drawHideout();
 
}
