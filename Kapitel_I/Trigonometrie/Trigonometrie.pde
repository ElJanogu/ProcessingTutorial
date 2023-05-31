/*
  
  Processing Tutorial
  Sketch Nr. 25
  Thema : Trigonometrie
  
  Sketch Inhalte :
  
  sin(winkel); - Berechnet den Sinus eines Winkels
    ~ winkel : Winkel im Bogenmass
  
  cos(winkel); - Berechnet den Cosinus eines Winkels
    ~ winkel : Winkel im Bogenmass
  
  tan(winkel); - Berechnet den Tangens eines Winkels
    ~ winkel : Winkel im Bogenmass
  
  asin(sinus); - Umkehrfunktion zum Sinus, berechnet den Winkel im Bogenmass
    ~ sinus : Sinuswert zum ermitteln des Winkels
  
  acos(cosinus); - Umkehrfunktion zum Cosinus, berechnet den Winkel im Bogenmass
    ~ cosinus : Cosinuswert zum ermitteln des Winkels
  
  atan(tangens); - Umkehrfunktion zum Tangens, berechnet den Winkel im Bogenmass
    ~ tangens : tangenswert zum ermitteln des Winkels
  
  degrees(radiant); - Konvertiert einen Bogenmasswert in einen Gradwert
    ~ radiant : Bogenmasswert der Konvertiert werden soll
  
  radians(degree); - Konvertiert einen Gradwert in einen Bogenmasswert
    ~ degree : Gradwert der Konvertiert werden soll

  atan2(x,y); - Berechnet den Winkel (im Bogenmass) vom angegebenden Punkt zum Koordinatenursprung gemessen von der positiven y-Achse
      Wertebereich : -PI - PI
    ~ x/y : Punkt, zu dem der Winkel gemessen wird
  
*/

int mode;
float start, winkel, winkelBase, inc, xBase, arcBase;

void setup()
{
  // SETUP START
  size(1200,200);
  start = 0;
  winkel = 0;
  winkelBase = 0;
  xBase = 200;
  arcBase = 5;
  inc = TWO_PI/100.0;
  mode = 0;
  
  println(radians(90));
  println(radians(220));
  println(radians(-30));
  println(radians(180));
  println();
  println(degrees(PI/2));
  println(degrees(PI));
  println(degrees(PI*2));
  println(degrees(5.125));
  // SETUP ENDE
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  background(125);
  // DRAW START
  
  //println(degrees(atan2(mouseX,mouseY)));
  
  if(mode == 0)
  {
    
    start = radians(180);
    arc(100,100,100,100,start,winkel+start);
    
    for(int i = 0; i < 1000; i+=10)
    {
      stroke(0);
      line(i+xBase,100,i+xBase,map(sin(winkel),-1,1,175,25));
      stroke(255,0,0);
      line(i+xBase+arcBase,100,i+xBase+arcBase,map(asin(sin(winkel)),-PI/2,PI/2,175,25));
      winkel+=inc;
    }
 
    winkelBase += radians(1);
  
    if(winkelBase >= radians(360))
    {
      winkelBase = 0;
    }
  
    winkel = winkelBase;
        
  } else if (mode == 1)
  {
    
    start = radians(270);
    arc(100,100,100,100,start,winkel+start);
    
    for(int i = 0; i < 1000; i+=10)
    {
      stroke(0);
      line(i+xBase,100,i+xBase,map(cos(winkel),-1,1,175,25));
      stroke(255,0,0);
      line(i+xBase+arcBase,100,i+xBase+arcBase,map(acos(cos(winkel)),0,PI,175,25));
      
      winkel+=inc;
    }
 
    winkelBase += radians(1);
  
    if(winkelBase >= radians(360))
    {
      winkelBase = 0;
    }
  
    winkel = winkelBase;
    
  } else if (mode == 2)
  {
    
    start = radians(0);
    arc(100,100,100,100,start,winkel+start);
    
    for(int i = 0; i < 1000; i+=10)
    {
      stroke(0);
      line(i+xBase,100,i+xBase,map(tan(winkel),-1,1,90,110));
      stroke(255,0,0); 
      line(i+xBase+arcBase,100,i+xBase+arcBase,map(atan(tan(winkel)),-PI/2,PI/2,175,25));
      
      winkel+=inc;
    }
 
    winkelBase += radians(1);
  
    if(winkelBase >= radians(360))
    {
      winkelBase = 0;
    }
  
    winkel = winkelBase;    
    
  }
   
  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  //line(0, mouseY, width, mouseY);
  //line(mouseX, 0, mouseX, height);
  //println(mouseX + " | " + mouseY);
}

void keyPressed()
{
  if(key == 's'){
    mode = 0;
  } else if(key == 'c')
  {
    mode = 1;
  } else if(key == 't')
  {
    mode = 2;
  } else if(key == 'q'){
    noLoop();
  } else if(key == 'w'){
    loop();
  }
}
