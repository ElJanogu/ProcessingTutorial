static class zufallsGenerator
{

  static int a;
  int b;
  
  zufallsGenerator(int y)
  {
    b = y;
  }
  
  zufallsGenerator(int x, int y)
  {
    a = x;
    b = y;
  }
  
  static boolean zufallsBoolean()
  {
    int tendenz = (int)(Math.random() * 10.0);
    if(tendenz < 5)
    {
      return false;
    } else 
    {
      return true;
    }
  }
  
  static int zufallsInt(int max)
  {
    return (int)zufallsFloat((float)max);
  }
  
  static int zufallsInt(int min, int max)
  {
    return (int)zufallsFloat((float)min,(float)max);
  }
  
  static float zufallsFloat(float max)
  {
    return (float)(Math.random()) * max;
  }
  
  static float zufallsFloat(float min, float max)
  {
    if(min < 0.0)
    {
      min *= -1;
      return zufallsFloat(max+min) - min;
    } else if(min == 0.0)
    {
      return zufallsFloat(max);
    } else {
      return zufallsFloat(max-min) + min;
    }
  }
  
  static String zufallsString(int laenge)
  {
    String wort = "";
    
    for(int index = 0; index < laenge; index++)
    {
      int tendenz = (int)(Math.random() * 10.0);
      int buchstabe = (int)(Math.random() * 26.0);
      if(tendenz < 5)
      {
        buchstabe += 97;
      } else 
      {
        buchstabe += 65;
      }
      wort += (char)buchstabe;
    }
    
    return wort;
  }
  
}
