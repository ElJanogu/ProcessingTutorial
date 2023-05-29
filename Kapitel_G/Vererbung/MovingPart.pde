interface MovingPart
{
  
  void move(char c);
  void port(float x, float y);
  
  void setKeys(char[] chars);
  void setKeys(char u, char r, char d, char l);
  
  void setSpeed(float speed);
  
}
