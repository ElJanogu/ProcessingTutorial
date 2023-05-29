class Enemy extends Person
{
  
  float activity;
  
  Enemy(float x_, float y_, float speed_, color c, char cKey, float active)
  {
    super(x_,y_,speed_,c,cKey);
    this.activity = active;
  }
  
  Enemy(float x_, float y_, float speed_, color c, char cKey)
  {
    super(x_,y_,speed_,c,cKey);
    this.activity = 1.0;
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
    float rand = random(1);
    if(rand < this.activity)
    {
      rand = random(4);
      if(rand < 1.0)
      {
        this.y -= this.speed;
      } else if(rand < 2.0)
      {
        this.x += this.speed;
      } else if(rand < 3.0)
      {
        this.y += this.speed;
      } else if(rand < 4.0)
      {
        this.x -= this.speed;
      }
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
    triangle(x-25,y-20,x+25,y-20,x,y+10);
  }

  void setKeys(char u, char r, char d, char l){/* noting*/}
  
  void setKeys(char[] chars){/* noting */}
  
}
