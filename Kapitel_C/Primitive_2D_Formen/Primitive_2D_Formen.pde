/*
  
  Processing Tutorial
  Sketch Nr. 06
  Thema : Primitive 2D Formen
  
  Sketch Inhalte :
  
  size(x,y); - Legt die Groesse der Leinwand fest
    ~ x : Breite der Leinwand in Pixel
    ~ y : Hoehe der Leinwand in Pixel
  
  fullScreen(); / fullScreen(#DISPLAY); - Setzt die Groesse der Leinwand auf die Bildschirmgroesse
    ~ #DISPLAY : Legt fest, welcher Bildschirm gewaehlt wird
  
  width - Variable, die die Breite der Leinwand (Pixel) speichert
  
  height - Bariable, die die Hoehe der Leinwand (Pixel) speichert
  
  point(x,y); - Zeichnet einen Punkt auf die Leinwand
    ~ x : x-Position des Punktes
    ~ y : y-Position des Punktes
  
  line(x1,y1,x2,y2); - Zeichnet eine Linie von einem Punkt zu einen anderen Punkt
    ~ x1/y1 : Erster Punkt der Linie
    ~ x2/y2 : Zweiter Punkt der Linie
  
  circle(x,y,c); - Zeichnet einen Kreis auf die Leinwand
    ~ x/y : (Effekt abhaengig von Zeichenmodus) Bezugspunkt des Kreises liegt im Zentrum / in der oberen linken Ecke, erster Eckpunkt
    ~ c : (Effekt abhaengig von Zeichenmodus) Durchmesser / Radius des Kreises, zweiter Eckpunkt
  
  ellipse(x,y,c,d); - Zeichnet ein Oval (eine Ellipse) auf die Leinwand
    ~ x/y : (Effekt abhaengig von Zeichenmodus) Bezugspunkt des Kreises liegt im Zentrum / in der oberen linken Ecke, erster Eckpunkt
    ~ c/d : (Effekt abhaengig von Zeichenmodus) Durchmesser / Radius in Breite bzw Hoehe, zweiter Eckpunkt
  
  ellipseMode(#MODUS); - Legt fest mit welchem Modus die folgenden Kreise und Ellipsen gezeichnet werden
    ~ CENTER* : x/y bildet den Punkt im Zentrum des Kreises / der Ellipse; c, c/d bildet den horizontalen / vertikalen Durchmesser
    ~ RADIUS : x/y bildet den Punkt im Zentrum des Kreises / der Ellipse; c, c/d bildet den horizontalen / vertikalen Radius
    ~ CORNER : x/y bildet den Punkt in der oberen linken Ecke des Kreises / der Ellipse; c, c/d bildet den horizontalen / vertikalen Durchmesser
    ~ CORNERS : x/y bildet den ersten Eckpunkt; c/c, c/d bildet den zweiten Eckpunkt; Der Kreis / die Ellipse wird zwischen diesen Punkten gezeichnet
  
  square(x,y,c); - Zeichnet ein Quadrat auf die Leinwand
    ~ x/y : (Effekt abhaengig von Zeichenmodus) Bezugspunkt des Quadrates liegt im Zentrum / in der oberen linken Ecke, erster Eckpunkt
    ~ c : (Effekt abhaengig von Zeichenmodus) volle / halbe Breite und Hoehe des Quadrates, zweiter Eckpunkt
  
  rect(x,y,c,d); / rect(x,y,c,d,e); / rect(x,y,c,d,f,g,h,i); - Zeichnet ein Rechteck auf die Leinwand
    ~ x/y : (Effekt abhaengig von Zeichenmodus) Bezugspunkt des Rechtecks liegt im Zentrum / in der oberen linken Ecke, erster Eckpunkt
    ~ c/d : (Effekt abhaengig von Zeichenmodus) volle / halbe Breite bzw Hoehe des Rechtecks, zweiter Eckpunkt
    ~ e : Radius fuer das Abrunden von allen Ecken des Rechtecks
    ~ f,g,h,i : Radius fuer das Abrunden der oberen linken, oberen rechten, unteren rechten und unteren linken Ecke
  
  rectMode(#MODUS); - Legt fest im welchem Modus die folgenden Quadrate und Rechtecke gezeichnet werden
    ~ CENTER : x/y bildet den Punkt im Zentrum des Qaudrates / Rechtecks; c, c/d bildet die volle Breite / Hoehe (Durchmesser)
    ~ RADIUS : x/y bildet den Punkt im Zentrum des Qaudrates / Rechtecks; c, c/d bildet die halbe Breite / Hoehe (Radius)
    ~ CORNER* : x/y bildet den Punkt in der oberen linken Ecke des Qaudrates / Rechtecks; c, c/d bildet die volle Breite / Hoehe (Durchmesser)
    ~ CORNERS : x/y bildet den ersten Eckpunkt; c/c, c/d bildet den zweiten Eckpunkt; Das Quadrat / Rechteck wird zwischen diesen Punkten gezeichnet
  
  triangle(x1,y1,x2,y2,x3,y3); - Zeichnet ein Dreieck auf die Leinwand
    ~ x1/y1, x2/y2, x3/y3 : Sind die Punkte aus denen das Dreieck besteht
  
  quad(x1,y1,x2,y2,x3,y3,x4,y4); - Zeichnet ein Viereck auf die Leinwand
    ~ x1/y1, x2/y2, x3/y3 , x4/y4 : Sind die Punkte aus denen das Viereck besteht

*/

float size;

void setup()
{
  // SETUP START
  size(1000,1000);
  size = 0.0;
  // SETUP ENDE
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  background(125);
  // DRAW START
  
  // ***** Kreis *****
  ellipseMode(CORNERS);
  circle(200,150,30);
  
  ellipseMode(CENTER);
  circle(400,130,120);
  
  ellipseMode(RADIUS);
  circle(720,80,75);
  
  ellipseMode(CORNER);
  circle(850,75,100);
  
  line(0,200,width,200);
  // ***** Ellipse *****
  ellipseMode(CORNERS);
  ellipse(200,370,50,230);
  
  ellipseMode(CENTER);
  ellipse(450,330,250,100);
  
  ellipseMode(RADIUS);
  ellipse(700,300,25,75);
  
  ellipseMode(CORNER);
  ellipse(840,230,150,125);
  
  line(0,400,width,400);
  // ***** Quadrat *****
  rectMode(CORNER);
  square(20,480,75);
  
  rectMode(CORNERS);
  square(220,550,450);
  
  rectMode(CENTER);
  square(670,500,100);
  
  rectMode(RADIUS);
  square(900,480,75);
  
  line(0,600,width,600);
  // ***** Rechteck *****
  rectMode(CORNER);
  rect(30,640,75,150);
  
  rectMode(CORNERS);
  rect(180,680,400,750,45);
  
  rectMode(CENTER);
  rect(600,700,125,100);
  
  rectMode(RADIUS);
  rect(850,675,75,50,45,20,0,90);
  
  line(0,800,width,800);
  // ***** Dreieck und Viereck *****
  
  triangle(260,825,425,900,310,980);
  
  quad(540,860,740,870,710,930,520,900);  
  
  // ***** Wachsender Kreis *****
  circle(500,500,size);
  size += 1.0 / 100.0;
  
  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  line(0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);
  println(mouseX + " | " + mouseY);
}
