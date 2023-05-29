/*
  
  Processing Tutorial
  Sketch Nr. 23
  Thema : Vektoren
  
  Sketch Inhalte :
  
  PVector : Ein PVector ist ein Objekt, das eine Richtung (Pfeil Richtung) und Staerke (Pfeil Laenge) beinhaltet
      Ein PVector verlaeuft vom Punkt (0,0) zum Punkt (x,y)
  
  PVector(x,y); - erstellt einen neuen PVector zum Punkt (x,y)
    ~ x : x-Koordinate des Ziel-Punktes vom Vektor
    ~ y : y:Koordinate des Ziel-Punktes vom Vektor
  
  x; (Float) - Gibt den x-Wert des Vektors zurueck
  
  y; (Float) - Gibt den y-Wert des Vektors zurueck
  
  set(x,y); / set(float[]); / set(PVector); - Setzt die Werte des Vektors neu
    ~ x : neuer Wert fuer die x-Koordinate
    ~ y : neuer Wert fuer die y-Koordinare
    ~ float[] : float[0] fuer x, float[1] fuer y (wenn vorhanden); ueberfluessige Indizes werden ignoriert
    ~ PVector : kopiert alle werte des PVector Parameters in den PVector
  
  random2D(); / random2D(TARGET); - [Klassenmethode] erstellt einen Einheitsvektor mit einer zufaelligen Richtung
    ~ TARGET : PVektor, in den die zufaelligen Wert geschrieben werden, ohne wird ein neuer Vektor erstellt
  
  fromAngle(RADIANS) / fromAngle(RADIANS,TARGET); - [Klassenmethode] erstellt einen Einheitsvektor mit einem bestimmten Winkel
    ~ RADIANS : Winkel des vektors im Bogenmass
    ~ TARGET : Vektor, in den das Ergebnis geschrieben wird
  
  copy(); - Gibt eine Kopie des Vektors zurueck
  
  mag(); - Berechnet die Laenge des Vektors als float
  
  magSq(); - Berechnet die Laenge des Vektors ins Quadrat (bzw ^2) als float
  
  add(x,y); / add(PVector); / add(PVector1,PVector2); / add(PVector1,PVector2,TARGET); - Addiert die Parameter zu einem Vektor
    ~ x : Wert, der auf den x-Wert des Vektors addiert wird
    ~ y : Wert, der auf den y-Wert des Vektors addiert wird
    ~ PVector : Vektor, dessen Werte auf die Werte des Vektors addiert werden
    ~ PVector1 : Erster Vektor, PVector3 = PVector1 + PVector2
    ~ PVector2 : Zweiter Vektor, PVector3 = PVector1 + PVector2
    ~ TARGET : Vektor, in den das Ergebnis geschrieben wird
  
  sub(x,y); / sub(PVector); / sub(PVector1,PVector2); / sub(PVector1,PVector2,TARGET); - Subtrahiert die Parameter von einem Vektor
    ~ x : Wert, der von den x-Wert des Vektors subtrahiert wird
    ~ y : Wert, der von den y-Wert des Vektors subtrahiert wird
    ~ PVector : Vektor, dessen Werte von den Werten des Vektors subtrahiert werden
    ~ PVector1 : Erster Vektor, PVector3 = PVector1 - PVector2
    ~ PVector2 : Zweiter Vektor, PVector3 = PVector1 - PVector2
    ~ TARGET : Vektor, in den das Ergebnis geschrieben wird
  
  mult(faktor); / mult(PVector,faktor); / mult(PVector,faktor,TARGET); - Multipliziert die Parameter zu einem Vektor
    ~ faktor : Faktor mit dem multipliziert wird
    ~ PVector : Vektor, dessen Werte multipliziert werden
    ~ TARGET : Vektor, in den das Ergebnis geschrieben wird
  
  div(faktor); / div(PVector,faktor); / div(PVector,faktor,TARGET); - Dividiert die Parameter zu einem Vektor
    ~ faktor : Faktor mit dem dividiert wird
    ~ PVector : Vektor, dessen Werte dividiert werden
    ~ TARGET : Vektor, in den das Ergebnis geschrieben wird
    
  dist(PVector); / dist(PVector1, PVector2); - Berechnet die Distanz Zwischen zwei Punkten
    ~ PVector : xyz.dist(PVector) -> berechnet Distanz zwischen xyz und PVector
    ~ PVector1 : Erster Vector dessen Enternfung zu einen anderen Vektor berechnet wird
    ~ PVector1 : Zweiter Vector dessen Enternfung zu einen anderen Vektor berechnet wird
  
  dot(PVector); / dot(x,y,z); / dot(PVector1, PVector2); - Berechnet das Skalarprodukt von zwei Vektoren
    ~ PVector : xyz.dot(PVector) -> berechnet das Skalarprodukt von xyz und PVector
    ~ x : Wert, der den x-Wert eines PVectors repräsentiert
    ~ y : Wert, der den y-Wert eines PVectors repräsentiert
    ~ z : Wert, der den z-Wert eines PVectors repräsentiert (fuer Vektoren im 3-Dimensionalen Raum)
    ~ PVector1 : Erster Vector, der zum berechnen eines Skalarproduktes verwendet wird
    ~ PVector2 : Zweiter Vector, der zum berechnen eines Skalarproduktes verwendet wird
  
  cross(PVector); / cross(PVector,TARGET); / cross(PVector1,PVector2,TARGET); - Berechnet das Kreuzprodukt von zwei Vektoren
    ~ PVector : xyz.cross(PVector) -> berechnet das Kreuzprodukt zwischen xyz und PVector
    ~ TARGET : Vektor, in den das Ergebnis geschrieben wird
    ~ PVector1 : Erster Vektor, der zum berechnen eines Kreuzproduktes verwendet wird
    ~ PVector2 : Zweiter Vektor, der zum berechnen eines Kreuzproduktes verwendet wird
  
  normalize(); / normalize(TARGET); - Normalisiert den Vektor, setzt die Laenge des Vektors auf 1 (Einheitsvektor)
    ~ TARGET : Vektor, in den das Ergebnis geschrieben wird
  
  limit(max); - Verringert die Laenge des Vektors auf einen bestimmten wert
    ~ max : neue Laenge des Vektors
  
  setMag(len); / setMag(TARGET,len); - Setzt die Laenge des Vektors auf einen bestimmten wert
    ~ len : neue Laenge des Vektors
    ~ TARGET : Vektor, in den das Ergebnis geschrieben wird
  
  heading(); - Gibt den Winkel des Vektors als Bogenmass zurueck
  
  rotate(angle); - dreht den Vektor um einen Winkel als Bogenmass
    ~ angle : Winkel mit dem der Vektor gedreht wird
  
  lerp(PVector,amt); / lerp(x,y,z,amt); / lerp(PVector1,PVector2,amt); - Erstellt einen Vektor, der sich zwischen einem Startvektor und einem Zielvektor befindet
    ~ PVector : "Zielvektor"
    ~ amt : Positionierung des Vektors zwischen den Vektoren, 0.0 = this / PVector1, 1.0 = PVector / PVector2, 0.5 -> genau dazwischen
    ~ x : Wert, der den x-Wert eines Vektors repräsentiert
    ~ y : Wert, der den y-Wert eines Vektors repräsentiert
    ~ z : Wert, der den z-Wert eines Vektors repräsentiert (fuer Vektoren im 3-Dimensionalen Raum)
    ~ PVector1 : "Startvektor"
    ~ PVector2 : "Zielvektor"
  
  angleBetween(PVector1,PVector2); - Berechnet den Winkel als Bogenmass zwischen zwei Vektoren
    ~ PVector1 : Startvektor fuer den Winkel
    ~ PVector2 : Endvektor fuer den Winkel
  
  array(); - Gibt ein float[] mit den Werten des Vektors zurueck
  
*/

PVector v1,v2,v3,fix,live;
float[] array = new float[]{12.2,-6.0,0.0,22.67};
boolean alive = false;

void setup()
{
  // SETUP START
  size(500,500);
  fix = new PVector(300,300);
  live = new PVector(0,0);
  
  v1 = new PVector(10,5);
  v2 = new PVector(0,0);
  v3 = new PVector(0,0);
  
  v2.set(v1);
  v3.set(5,-10);
  v1.set(array);
  
  println(v1);
  println(v2);
  println(v3);
  
  println();
  
  PVector.random2D(v1); // alternative : v1 = PVector.random2D();
  println(v1);
  
  PVector.fromAngle(radians(90),v1); // alternative : v1 = PVector.fromAngle(degrees(90));
  println(v1);
  
  println();
  
  v1 = v2.copy();
  println(v1.x + " " + v1.y + " " + v1.z);
  
  println();
  
  println(v1.mag());
  println(v1.magSq());
  
  println();
  
  println(v2);
  println(v3);
  
  println();
  
  v1 = PVector.add(v2,v3); // alterative : v2.add(v3);**, v2.add(5,-10);**, PVector.add(v2,v3,v1); | **v2 wird veraendert
  println(v1);
  
  v1 = PVector.sub(v2,v3); // alterative : v2.sub(v3);**, v2.sub(5,-10);**, PVector.sub(v2,v3,v1); | **v2 wird veraendert
  println(v1);
  
  v1 = PVector.mult(v2,2.0); // alternative : v2.mult(2.0);**, PVector.mult(v2,2.0,v1); | **v2 wird veraendert
  println(v1);
  
  v1 = PVector.div(v2,1.25); // alternative : v2.div(1.25);**, PVector.div(v2,1.25,v1); | **v2 wird veraendert
  println(v1);
  
  println();
  
  println(v1);
  println(v2);
  
  println();
  
  println(v1.dist(v2));
  println(v1.dot(v2));
  println(v1.cross(v2));
  
  println();
  
  println(v3);
  println(v3.mag());
  
  v3.normalize(); 
  println(v3);
  println(v3.mag());
  
  v3.setMag(10); // alternative : PVector.setMag(v3,10);
  println(v3);
  println(v3.mag());
  
  v3.limit(2.5);
  println(v3);
  println(v3.mag());

  println();
  
  v2.set(0,10);
  println(v2);
  println(v2.heading());
  println(degrees(v2.heading()));
  
  v2.rotate(radians(90.0));
  println(v2);
  println(v2.heading());
  println(degrees(v2.heading()));
  
  v2.rotate(radians(180.0));
  println(v2);
  println(v2.heading());
  println(degrees(v2.heading()));
  
  println();
  
  v1.set(10,10);
  v2.set(-10,10);
  
  println(v1);
  println(v2);
  
  println();
  
  v3 = PVector.lerp(v1,v2,0.0);
  println(v3);
  
  v3 = PVector.lerp(v1,v2,0.25);
  println(v3);
  
  v3 = PVector.lerp(v1,v2,0.5);
  println(v3);
  
  v3 = PVector.lerp(v1,v2,1.0);
  println(v3);
  
  println();
  
  println(PVector.angleBetween(v1,v2));
  println(degrees(PVector.angleBetween(v1,v2)));
  
  println();
  
  float[] vektorArray = v1.array();
  println(vektorArray);
  
  // SETUP ENDE
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  background(125);
  // DRAW START
  //translate(250,250);
  if(alive)
  {
  live.set(mouseX,mouseY);
  
  line(0,0,fix.x,fix.y);
  line(0,0,live.x,live.y);
  
  println("Live Groesse : " + live.mag());
  println("Entfernung : " + live.dist(fix));
  println("Richtung : " + degrees(live.heading()));
  println("Winkel : " + degrees(PVector.angleBetween(live,fix)));
  println("...");
  }

  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  //line(0, mouseY, width, mouseY);
  //line(mouseX, 0, mouseX, height);
  //println(mouseX + " | " + mouseY);
}

void keyPressed()
{
  if(key == 's' || key == 'S'){
    alive = true;
  }
}
