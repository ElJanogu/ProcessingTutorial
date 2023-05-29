class Player extends Person
{
  
  char up, right, down, left;
  
  Player(float x_, float y_, float speed_, color c, char cKey, char u, char r, char d, char l)
  {
    super(x_,y_,speed_,c,cKey);
    this.up = u;
    this.right = r;
    this.down = d;
    this.left = l;
  }
  
  void setKey(char c)
  {
    this.colKey = c;
  }
  
  void setColor()
  {
    int red = (int)random(256);
    int green = (int)random(256);
    int blue = (int)random(256);
    setColor(color(red,green,blue));
  }
  
  void setColor(color c)
  {
    this.col = c;
  }
  
  void updateColor(char c, color col)
  {
    if(c == this.colKey)
    {
      setColor(c);
    }
  }
  
  void updateColor(char c)
  {
    if(c == this.colKey)
    {
      setColor();
    }
  }
  
  void setSpeed(float s)
  {
    this.speed = s;
  }
  
  void move(char c)
  {
    if(c == up)
    {
      y -= speed;
    } else if(c == right)
    {
      x += speed;
    } else if(c == down)
    {
      y += speed;
    } else if(c == left)
    {
      x -= speed;
    }
  }

  void port(float toX, float toY)
  {
    this.x = toX;
    this.y = toY;
  }
  
  void drawPerson()
  {
    fill(this.col);
    triangle(x-25,y+20,x+25,y+20,x,y-10);
  }

  void setKeys(char u, char r, char d, char l)
  {
    this.up = u;
    this.right = r;
    this.down = d;
    this.left = l;
  }
  
  void setKeys(char[] chars)
  {
    if(chars.length < 4) return;
  }
}
