/*
  
  Processing Tutorial
  Sketch Nr. 27
  Thema : Kurvenpunkte und Tangenten
  
  Sketch Inhalte :
  
  curvePoint(a,b,c,d,t); - Wird verwendet um den Punkt t fuer die Kurve curve(a,b,c,d) zu evaluieren
    ~ a : Koordinate des ersten Kontrollpunktes
    ~ b : Koordinate des ersten Kurvenpunktes
    ~ c : Koordinate des zweiten Kurvenpunktes
    ~ d : Koordinate des zweiten Kontrollpunktes
    ~ t : Evaluierungsstelle, Wertebereich : 0 (Anfang der Kurve) - 1 (Ende der Kurve)
  
  bezierPoint(a,b,c,d,t); - Wird verwendet um den Punkt t fuer die Bezierkurve bezier(a,b,c,d) zu evaluieren
    ~ a : Koordinate des ersten Ankerpunktes
    ~ b : Koordinate des ersten Kontrollpunktes
    ~ c : Koordinate des zweiten Kontrollpunktes
    ~ d : Koordinate des zweiten Ankerpunktes
    ~ t : Evaluierungsstelle, Wertebereich : 0 (Anfang der Kurve) - 1 (Ende der Kurve)
  
  curveTangent(a,b,c,d,t); - Berechnet die Tangente eines Punktes auf einer Kurve
    ~ a : Koordinate des ersten Kontrollpunktes
    ~ b : Koordinate des ersten Kurvenpunktes
    ~ c : Koordinate des zweiten Kurvenpunktes
    ~ d : Koordinate des zweiten Kontrollpunktes
    ~ t : Evaluierungsstelle, Wertebereich : 0 (Anfang der Kurve) - 1 (Ende der Kurve)
  
  bezierTangent(); - Berechnet die Tangente eines Punktes auf einer Bezierkurve
    ~ a : Koordinate des ersten Ankerpunktes
    ~ b : Koordinate des ersten Kontrollpunktes
    ~ c : Koordinate des zweiten Kontrollpunktes
    ~ d : Koordinate des zweiten Ankerpunktes
    ~ t : Evaluierungsstelle, Wertebereich : 0 (Anfang der Kurve) - 1 (Ende der Kurve)
  
  
*/

float kurvenFaktor;
int schritte, mode;

void setup()
{
  // SETUP START
  size(1000,500);
  kurvenFaktor = 1.0;
  schritte = 1;
  mode = -1;
  // SETUP ENDE
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  background(125);
  // DRAW START
  noFill();
  for(int index = 0; index <= schritte; index++)
  {
    float abschnitt, xPoint, yPoint, xTan, yTan, winkel;
    
    if(mode == 0)
    {
      // ***** Kurven Punkte *****
      stroke(0);
    
      abschnitt = index / (float)schritte;
      xPoint = curvePoint(mouseX*kurvenFaktor,500,500,mouseX*kurvenFaktor,abschnitt);
      yPoint = curvePoint(mouseY,30,470,mouseY+440,abschnitt);
      circle(xPoint,yPoint,10);
    
      // ***** Kurven Tangenten *****
      stroke(255,0,0);
    
      xTan = curveTangent(mouseX*kurvenFaktor,500,500,mouseX*kurvenFaktor,abschnitt);
      yTan = curveTangent(mouseY,30,470,mouseY+440,abschnitt);
      winkel = atan2(yTan,xTan);
    
      line(xPoint,yPoint,cos(winkel)*32+xPoint,sin(winkel)*32+yPoint);
      line(xPoint,yPoint,cos(winkel+PI)*32+xPoint,sin(winkel+PI)*32+yPoint);
          
      stroke(0);
      curve(mouseX*kurvenFaktor,mouseY,500,30,500,470,mouseX*kurvenFaktor,mouseY+440);
  
    } else if (mode == 1){
      // ***** bezier Punkte *****
      stroke(0);
    
      abschnitt = index / (float)schritte;
      xPoint = bezierPoint(500,mouseX*kurvenFaktor,mouseX*kurvenFaktor,500,abschnitt);
      yPoint = bezierPoint(30,mouseY,mouseY+440,470,abschnitt);
      circle(xPoint,yPoint,10);
      
      stroke(255,0,0);
      
      xTan = bezierTangent(500,mouseX*kurvenFaktor,mouseX*kurvenFaktor,500,abschnitt);
      yTan = bezierTangent(30,mouseY,mouseY+440,470,abschnitt);
      winkel = atan2(yTan,xTan);
      
      line(xPoint,yPoint,cos(winkel)*32+xPoint,sin(winkel)*32+yPoint);
      line(xPoint,yPoint,cos(winkel+PI)*32+xPoint,sin(winkel+PI)*32+yPoint);
      
      stroke(0);
      bezier(500,30,mouseX*kurvenFaktor,mouseY,mouseX*kurvenFaktor,mouseY+440,500,470);
    }
    
  }
  
  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  //line(0, mouseY, width, mouseY);
  //line(mouseX, 0, mouseX, height);
  //println(mouseX + " | " + mouseY);
}

void keyPressed()
{
  if(key == '+')
  {
    kurvenFaktor += 1.0/2.0;
    println("KurvenFaktor : " + kurvenFaktor);
  }else if(key == '-')
  {
    kurvenFaktor -= 1.0/2.0;
    println("KurvenFaktor : " + kurvenFaktor);
  }else if(key == 'q'){
    schritte++;
  }else if(key == 'a'){
    schritte--;
  }else if(key == 'y'){
    mode = 0;
  } else if(key == 'x'){
    mode = 1;
  }
}
