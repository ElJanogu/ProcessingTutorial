/*
  
  Processing Tutorial
  Sketch Nr. 32
  Thema : Typografie
  
  Sketch Inhalte :
  
  PFont - Datentyp zum verarbeiten von Schriftarten
    -> list(); - Gibt ein Lister aller ausdem System installierten Schriftarten zurueck
    
  createFont(name,size); / createFont(name,size,smooth); / createFont(name,size,smooth,charset); - convertiert eine Schriftart aus einer .ttf oder .otf Datei aus
      dem Sketch-Ordner oder von den Schriftarten die auf dem Betriebssystem installiert ist in ein Format, dass Processing verarbeiten kann
    ~ name : Name der Schirftart zum laden
    ~ size : Schriftgroesse
    ~ smooth : true fuer ano-aliasing, false fuer aliased
    ~ charset : Array der Charactere die generiert werden
  
  loadFont(dateiname); - Laedt eine .vlw Datei ein ein PFont Objekt
    ~ dateiname : name der datei, die als Schriftart geladen wird
  
  textFont(Font,size); - Setzt die aktuelle Schriftart fuer text()
    ~ Font : PFont, also Schriftart die verwendet wird
    ~ size : Die Groesse der Schirft in Pixel
  
  text(c,x,y); / text(str,x,y); / text(chars,start,stop,x,y); / text(str,x,y,x2,y2); / text(num,x,y); -
    ~ c : char, der als Text angezeigt wird
    ~ str : String, der als Text angezeigt wird
    ~ chars : char[], das als Text angezeigt wird
    ~ num : Zahl, die als Text angezeigt wird
    ~ start : start index des Array, ab dem angefangen wird den Text zu schreiben
    ~ stop : stop index des Arraysm ab dem gestoppt wird den Text zu schreiben
    ~ x : x-Koordinate des Textes / der Textbox
    ~ y : y-Koordinate des Textes / der Textbox
    ~ x2 : Normalerweise die Breite der Textbox
    ~ y2 : Normalerweise die Hoehe der Textbox
  
  textAlign(alignX,alignY); - Legt die Ausrichtung der folgenden Texte fest
    ~ alignX : Horizontale Ausrichtung (LEFT,CENTER,RIGHT) 
    ~ alignY : Vertikale Ausrichtung (TOP,CENTER,BASELINE,BOTTOM)
  
  textLeading(leading); - Setzt den Abstand zwischen Zeilen fuer folgende Texte ,wird durch testSize() resettet
    ~ leading : Abstand der Zeilen in Pixel
  
  textSize(size); - Setzt die Schriftgroesse fuer folgende Texte
    ~ size : Schriftgroesse in Pixel
  
  textMode(mode); - Legt fest wie Text auf die Leinwand geschrieben wird
    ~ mode : Modus (SHAPE, MODEL)
  
  textWidth(c); / textWidth(str) - Berechnet die Laenge eines Character-text oder String-text
    ~ c : Zeichen zum messen
    ~ str : String zum messen

*/

PFont font;
char[] array = new char[]{'A','C','E','G','I','K','M','O'};
Integer size, leading;

void setup()
{
  //SETUP START
  size(1000,750);
  size = 50;
  leading = 10;
  // SETUP ENDE
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  background(125);
  // DRAW START

  text('A',500,50);
  text("Hello World",500,150);
  text(175.50,500,250);
  text(array,2,5,500,350);
  text("Hello\nWorld",500,450,200,150);
  noFill();
  rect(500,450,200,150);
  
  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  line(0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);
  //println(mouseX + " | " + mouseY);
}

void keyPressed()
{
  if(key == ENTER)
  {
    printArray(PFont.list());
  } else if(key == 'q')
  {
    font = loadFont("data//Rockwell-Condensed-100.vlw");
  } else if(key == 'a')
  {
    String[] array = PFont.list();
    int index = (int)random(array.length-1);
    
    font = createFont(array[index],100.0);
  } else if(key == 'y')
  {
    textFont(font,50);
  } else if(key == 'w')
  {
    textMode(MODEL);
  } else if(key == 's')
  {
    textMode(SHAPE);
  } else if(key == 'e')
  {
    size++;
    textSize(size);
  } else if(key == 'd')
  {
    size--;
    textSize(size);
  } else if(key == 'r')
  {
    leading++;
    textLeading(leading);
  } else if(key == 'f')
  {
    leading--;
    textLeading(leading);
  } else if(key == '7')
  {
    textAlign(LEFT);
  } else if(key == '8')
  {
    textAlign(CENTER);
  } else if(key == '9')
  {
    textAlign(RIGHT);
  } else if(key == '4')
  {
    textAlign(CENTER,TOP);
  } else if(key == '1')
  {
    textAlign(CENTER,CENTER);
  } else if(key == '5')
  {
    textAlign(CENTER,BASELINE);
  } else if(key == '2')
  {
    textAlign(CENTER,BOTTOM);
  } else if(key == '0')
  {
     println(textWidth('A'));
  } else if(key == ',')
  {
     println(textWidth("Hello World"));
  }
}
