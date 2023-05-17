/*
  
  Processing Tutorial
  Sketch Nr. 08
  Thema : Koordinatensysten & Formenmanipulation
  
  Sketch Inhalte :
  
  strokeCap(#MODUS); - Legt fest in welchem Stil die Endungen von Linien gezeichnet werden
    ~ Modi :
      -> ROUND* : Die Enden der Linien sind abgerundet, sie werden mit Halbkreisen erweitert
      -> PROJECT : Die Enden der Linien sind mit Rechtecken erweitert
      -> SQUARE : Die Enden sind strikt abgeschnitten
  
  strokeWeight(#WEIGHT); - Legt die Breite der folgenden Linien fest
    ~ #WEIGHT : Die Linienbreite in Pixel (float)
  
  strokeJoin(#MODUS); - Legt den Stil fest mit dem Linien verbunden werden
    ~ Modi :
      -> MITER* : Der Uebergang zwischen den Linien verlaeuft spitz
      -> BEVEL : Der Uebergang zwischen den Linien ist abgestumpft
      -> ROUND : Der Uebergang zwischen den Linien ist abgerundet
  
  rotate(#DEGREE); - Dreht die folgenden Formen realtiv zum Koordinatenzentrum
    ~ #DEGREE : Grad der Drehung als Bogenmass
    ~ Wird rotate() in draw() aufgerufen, wird der Effekt mit dem erneuten Start der draw-Funktion zurueckgesetzt
  
  scale(a); / scale(x,y); - Skalliert alle Werte der folgenden Formen d.h. Position und Groesse
    ~ a : Multiplikator fuer alle Werte der Formen
    ~ x : Multiplikator fuer x-Position und Breite der Formen
    ~ y : Multiplikator fuer y-Position und Hoehe der Formen
    ~ Wird scale() in draw() aufgerufen, wird der Effekt mit dem erneuten Start der draw-Funktion zurueckgesetzt
  
  translate(x,y); - Verschiebt des Zentrum des Koordinatensystems
    ~ x : Verschiebung des Koordinatensystems auf der x-Achse
    ~ y : Verschiebung des Koordinatensystems auf der y-Achse
    ~ Wird translate() in draw() aufgerufen, wird der Effekt mit dem erneuten Start der draw-Funktion zurueckgesetzt
  
  pushMatrix(); - Legt die aktuelle Transformationsmatrix (Koordinatensytem) auf den Matrizen-Stapel
    ~ rotate(), scale() und transform() sind davon auch betroffen
  
  popMatrix(); - Nimmt die oberste Transformationsmatrix (Koordinatensytem) vom Matrizen-Stapel

*/

float rotation;
float scaleX;
float scaleY;

void setup()
{
  // SETUP START
  size(1000,1000);
  rotation = 0.0;
  scaleX = 1.0;
  scaleY = 1.0;
  // SETUP ENDE
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  background(125);
  strokeCap(ROUND);
  // DRAW START
  
  // ***** Linien Breite *****
  strokeWeight(1);
  point(50,50);
  line(100,50,400,50);
  circle(600,75,100);
  
  strokeWeight(5);
  point(50,100);
  line(100,100,400,100);
  circle(800,75,100);
  
  strokeWeight(7);
  point(50,150);
  line(100,150,400,150);
  circle(700,150,100);
  
  strokeWeight(10);
  point(50,200);
  line(100,200,400,200);
  circle(600,225,100);
  
  strokeWeight(25);
  point(50,250);
  line(100,250,400,250);
  circle(800,225,100);
  
  strokeWeight(1);
  line(0,333,width,333);
  
  // ***** Linien Enden *****
  strokeWeight(10);
  
  strokeCap(ROUND);
  point(50,400);
  line(100,400,900,400);
  
  strokeCap(PROJECT);
  point(50,500);
  line(100,500,900,500);
  
  strokeCap(SQUARE);
  point(50,600);
  line(100,600,900,600);
  
  
  strokeWeight(1);
  
  line(0,666,width,666);
  
  // ***** strokeJoin *****
  strokeWeight(10);
  
  strokeJoin(MITER);
  beginShape();
  vertex(125,725);
  vertex(300,850);
  vertex(125,975);
  endShape();
  
  strokeJoin(BEVEL);
  beginShape();
  vertex(425,725);
  vertex(600,850);
  vertex(425,975);
  endShape();
  
  strokeJoin(ROUND);
  beginShape();
  vertex(725,725);
  vertex(900,850);
  vertex(725,975);
  endShape();
  
  strokeWeight(1);
  
  // *****rotate, scale, translate & matrix *****
  pushMatrix();
  
  translate(500,500);
  
  rotate(radians(rotation));
  square(0,100,100);
  
  rotation += 1.0 / 10.0;
  
  popMatrix();
  
  pushMatrix();
  
  scale(scaleX, scaleY);
  square(1,1,10);
  
  scaleX += 1.0 / 1000.0;
  scaleY += 1.0 / 950.0;
  
  popMatrix();
  
  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  line(0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);
  println(mouseX + " | " + mouseY);
}
