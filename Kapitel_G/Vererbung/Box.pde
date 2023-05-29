class Box extends Hideout
{
  Box(float x_, float y_)
  {
    this.x = x_;
    this.y = y_;
  }

  void setKey(char c){/* noting*/}
  
  void setColor(){/* noting*/}
  
  void setColor(color col){/* noting*/}
  
  void updateColor(char c){/* noting*/}
  
  void updateColor(char c, color col){/* noting*/}
  
  void drawHideout()
  {
    rectMode(CENTER);
    fill(100,255,0);
    square(x,y,75);
  }
}
