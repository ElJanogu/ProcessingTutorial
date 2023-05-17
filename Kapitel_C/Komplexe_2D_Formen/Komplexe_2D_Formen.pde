/*
  
  Processing Tutorial
  Sketch Nr. 07
  Thema : Komplexe 2D Formen
  
  Sketch Inhalte :
  
  arc(x,y,c,d,start,ende); / arc(x,y,c,d,start,ende,modus); - Zeichnet einen Bogen auf die Leinwand
    ~ x/y : (Effekt abhaengig von Zeichenmodus) Bezugspunkt des Bogens liegt im Zentrum / in der oberen linken Ecke, erster Eckpunkt
    ~ c/d : (Effekt abhaengig von Zeichenmodus) Durchmesser / Radius in Breite bzw Hoehe, zweiter Eckpunkt
    ~ start : Gibt den Startwinkel des Bogens im Bogenmass an
    ~ ende : Gibt den Endwinkel des Bogens im Bogenmass an
    ~ modus : Gibt die Art des Bogens an
      -> Der Standart is PIE ohne Innenrand (PIE : Linien von den Bogenenden zum Zentrum)
      -> PIE : Wird wie Standard gezeichnet, aber mit Innenrand
      -> CHORD : Der Bogen wird mit einer Linie zwischen den Bogenenden abgeschlossen 
      -> OPEN : Wird wie mit CHORD gezeichnet aber ohne Aussenlinie
  
  ellipseMode(#MODUS); - Legt fest mit welchem Modus die folgenden Kreise und Ellipsen gezeichnet werden
    ~ CENTER* : x/y bildet den Punkt im Zentrum des Bogens; c/d bildet den horizontalen / vertikalen Durchmesser
    ~ RADIUS : x/y bildet den Punkt im Zentrum des Bogens; c/d bildet den horizontalen / vertikalen Radius
    ~ CORNER : x/y bildet den Punkt in der oberen linken Ecke des Bogens; c/d bildet den horizontalen / vertikalen Durchmesser
    ~ CORNERS : x/y bildet den ersten Eckpunkt; c/d bildet den zweiten Eckpunkt; Der Bogen wird zwischen diesen Punkten gezeichnet
  
  degrees(radiant); - Konvertiert einen Bogenmasswert in einen Gradwert
    ~ radiant : Bogenmasswert der Konvertiert werden soll
  
  radians(degree); - Konvertiert einen Gradwert in einen Bogenmasswert
    ~ degree : Gradwert der Konvertiert werden soll
  
  TWO_PI - Mathematische Konstante, die den Wert von 2PI speichert (6.2831855...)
  PI - Mathematische Konstante, die den Wert von PI speichert (3.1415927...)
  HALF_PI - Mathematische Konstante, die den Wert von PI/2 speichert (1.5707964...)
  QUARTER_PI - Mathematische Konstante, die den Wert von PI/4 speichert (0.7853982...)
  
  curve(x1,y1,x2,y2,x3,y3,x4,y4); - Zeichnet eine Kurve auf die Leinwand
    ~ x1/y1, x4/y4 : Kontrollpunkte der Kurve
    ~ x2/y2, x3/y3 : Erster und zweiter Punkt der Kurve
  
  curveTightness(tightness); - Legt die Form der Kurve fest
    ~ tightness : Parameter zur Festlegung der Form, 0.0 ist der Standard, 1.0 verbindet die Punkte mit direkten Linien, Wertebereich -5.0 - 5.0;
  
  bezier(x1,y1,x2,y2,x3,y3,x4,y4); - Zeichnet eine Bezierkurve auf die Leinwand
    ~ x1/y1, x4/y4 : Ankerpunkte der Bezierkurve
    ~ x2/y2, x3/y3 : Kontrollpunkte der Bezierkurve
  
  beginShape(); / beginShape(#MODUS); - beginShape() und endShape() erlauben das Zeichnen von individuellen Formen, beginShape() startet diesen Abschnitt;
    ~ Modi :
     -> POINTS : jeder vertex() innerhalb des Abschnitts wird als Punkt gezeichnet
     -> LINES : Je ein paar von vertex() zeichnet eine Linie von vertex1 zu vertex2
     -> TRIANGLES : Je eine gruppe aus vertex() zeichnet ein Dreieck zwischen vertex1, vertex2 und vertex3
     -> TRIANGLE_FAN : Der erste vertex stellt das Zentrum des "Fans", Paare von folgenden vertex (vertex2 und 3, 3 und 4 ..) zeichnen dann Dreiecke mit dem Zentrum
     -> TRIANGLE_STRIP : Bildet einen Streifen aus Dreiecken, wobei die vertex eine "Zick-Zack" Linie Bilden; Die Luecken werden mit zusaetlichen Linien geschlossen
     -> QUADS : Je eine gruppe aus vertex() zeichnet ein Dreieck zwischen vertex1, vertex2, vertex3 und vertex4
     -> QUAD_STRIP : Bildet einen Streifen aus Vierecken, wobei die vertex aus Linien bilden; Die Luecken zwischen auseinander folgenden Linien werden geschlossen
  
  endShape(); / endShape(#MODUS); - beendet den Abschnitt in dem eine Induviduelle Form erstellt wird
    ~ Modus :
      -> CLOSE : Schliesst die Form mit einer abschliessenden Linie zwischen dem ersten und letzten Vertex ab
  
  vertex(x,y); - Erzeugt einen Punkt fuer eine individuelle Form
    ~ x/y : der Punkt des Vertex
  
  curveVertex(x,y); - Erzeugt einen Kurvenpunkt fuer eine individuelle Form
    ~ x/y : der Punkt des Vertex
    ~ Kann nicht mit einem beginShape-Modus verwendet werden
    ~ benoetigt mindestens 4 curveVertex() in folge um eine Kurve zu bilden (wie bei curve()); Bei z.B. 5 passiert foldendes : Kurve 1 : 1,2,3,4; Kurve2 : 2,3,4,5;
  
  bezierVertex(x2,y2,x3,y3,x4,y4); - Erzeugt einen Bezierkurvenpunkt fuer eine individuelle Form
    ~ x2/y2, x3/y3 : Kontrollpunkte der Bezierkurve
    ~ x4/y4 : Zweiter Ankerpunkt der Bezierkurve
    ~ benoetigt einen vertex vor dem Aufruf von bezierVertex als ersten Ankterpunkt
    ~ Kann nicht mit einem beginShape-Modus verwendet werden
  
  quadraticVertex(x2,y2,x3,y3); - Erzeugt einen quadratischen Bezierkurvenpunkt fuer eine individuelle Form
    ~ x2/y2 : Kontrollpunkt der Bezierkurve
    ~ x3/y3 : Zweiter Ankerpunkt der Bezierkurve
    ~ benoetigt einen vertex vor dem Aufruf von bezierVertex als ersten Ankterpunkt
    ~ Kann nicht mit einem beginShape-Modus verwendet werden
  
  beginContour(); - Erlaubt einen individuellen Bereich innerhalb einer individuellen Form auszuschneiden (wie beginShape)
    ~ die Richtung der vertex des Contour muss entgegengesetzt zu den vertex der Shape sein (im Ihrzeigersinn / gegen den Urhzeigersinn)
  
  endContour(); - Beendet den individuellen Ausschnitt in der individuellen Form
  
*/

float angle;
float curveHeight;
float curve2left;
float curve2right;
float bezierLeft;
float bezierRight;

void setup()
{
  // SETUP START
  size(900,900);
  angle = 0.0;
  curveHeight = 560.0; 
  
  curve2left = 200.0;
  curve2right = 425.0;
  
  bezierLeft = 0.0;
  bezierRight = 900.0;
  // SETUP ENDE
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  background(125);
  // DRAW START
  
  // ***** ARC *****
  arc(100,150,150,150,radians(0), radians(angle));
  arc(325,150,150,150,radians(0), radians(angle), PIE);
  arc(575,150,150,150,radians(0), radians(angle), OPEN);
  arc(800,150,150,150,radians(0), radians(angle), CHORD);
  
  angle += 1.0 / 10.0;
  
  line(0,300,width,300);
  
  line(90,curveHeight,45,400);
  line(135,curveHeight,180,400);
  curve(90,curveHeight,45,400,180,400,135,curveHeight);
  
  line(curve2left,515,245,400);
  line(curve2right,515,380,400);
  curve(curve2left,515,245,400,380,400,curve2right,515);
  
  curveHeight -= 1.0 / 10.0;
  curve2left += 1.0 / 10.0;
  curve2right -= 1.0 / 10.0;
  
  bezier(500,450,616,bezierLeft,732,bezierRight,850,450);
  
  bezierLeft += 1.0 / 5.0;
  bezierRight -= 1.0 / 5.0;
  
  line(0,600,width,600);
  
  // ***** gemischte Form mit Contour *****
  beginShape();
  
  vertex(40,650);
  vertex(85,620);
  curveVertex(100,650);
  curveVertex(130,640);
  curveVertex(150,660);
  curveVertex(140,700);
  curveVertex(125,740);
  vertex(160,720);
  bezierVertex(100,720,140,850,20,770);
  quadraticVertex(70,710,40,650);
  
  beginContour();
  
  vertex(95,660);
  vertex(70,670);
  vertex(65,750);
  vertex(100,750);
  quadraticVertex(90,700,125,670);
  
  endContour();
  
  endShape();
  
  // ***** Linien *****
  beginShape(LINES);
  vertex(210,630);
  vertex(300,640);
  vertex(200,700);
  vertex(230,800);
  vertex(300,750);
  endShape();
  
  // ***** Dreiecke *****
  beginShape(TRIANGLES);
  vertex(240,820);
  vertex(270,820);
  vertex(160,880);
  vertex(350,640);
  vertex(370,670);
  endShape();
  
  // ***** Dreieck-Fan *****
  beginShape(TRIANGLE_FAN);
  vertex(500,700);
  vertex(500,625);
  vertex(600,700);
  vertex(550,750);
  vertex(480,780);
  vertex(430,750);
  vertex(470,670);
  vertex(500,625);
  endShape();
  
  // ***** Dreieck-Streifen *****
  beginShape(TRIANGLE_STRIP);
  vertex(450,800);
  vertex(600,825);
  vertex(450,850);
  vertex(600,875);
  vertex(450,900);
  endShape();
  
  // ***** Viereck-Streifen *****
  beginShape(QUAD_STRIP);
  vertex(670,650);
  vertex(850,670);
  vertex(660,680);
  vertex(850,680);
  vertex(675,710);
  vertex(855,700);
  vertex(650,750);
  vertex(775,770);
  endShape();
  
  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  strokeWeight(10);
  stroke(255,0,0);
  point(100,650);
  point(130,640);
  point(150,660);
  point(140,700);
  point(125,740);
  stroke(0,255,0);
  point(100,720);
  point(140,850);
  point(20,770);
  stroke(0,0,255);
  point(70,710);
  point(40,650);
  stroke(0);
  strokeWeight(1);
  
  line(0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);
  println(mouseX + " | " + mouseY);
}
