interface ColoredPart
{
  void setColor(color col);
  void setColor();
  
  void setKey(char colKey);
  
  void updateColor(char c, color col);
  void updateColor(char c);
  
  default String colorHex(color col)
  {
    return hex(col);
  }
}
