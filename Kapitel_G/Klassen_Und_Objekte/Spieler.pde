class Spieler
{
  float x;
  float y;
  final float speed;
  
  color col;
  char up, down, left, right;
  
  Spieler(float x_, float y_, float s, color c, char u, char d, char l, char r)
  {
    this.x = x_;
    this.y = y_;
    this.speed = s;
    this.col = c;
    this.up = u;
    this.down = d;
    this.left = l;
    this.right = r;
  }
  
  void paintPlayer()
  {
    fill(col);
    ellipseMode(CENTER);
    circle(x,y,50);
  }
  
  void movePlayer(char k)
  {
    if(k == this.up)
    {
      y -= speed;
    } else if(k == this.down)
    {
      y += speed;
    } else if(k == this.left)
    {
      x -= speed;
    } else if(k == this.right)
    {
      x += speed;
    }
  }
  
  void changeColor()
  {
    int rot = (int)random(256);
    int gruen = (int)random(256);
    int blau = (int)random(256);
    col = color(rot,gruen,blau);
  }
  
}
