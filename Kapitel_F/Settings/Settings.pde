/*
  
  Processing Tutorial
  Sketch Nr. 16
  Thema : Settings
  
  Sketch Inhalte :
  
  settings(){} - Funktion die noch vor dem Setup aufgefuehrt wird, ermoeglicht unter anderem die Groesse der Leinwand mit Variablen festzulegen
  
  surface.setTitle(titel); - Setzt den Titel der Leinwand
    ~ titel : Titel der Leinwand
  
  surface.setResizable(boolean); - Legt fest ob Die Leinwand waehrend der Laufzeit vergroessert und verkleinert werden kann
    ~ boolean : true : Leinwand veraenderbar, false : Leinwand nicht veraenderbar
  
  surface.setLocation(x,y); - Legt fest wo das Fenster (Leinwand) gemessen an der oberen linken Ecke des Bildschirms erscheint
    ~ x : Horizontale Verschiebung
    ~ y : Vertikale Verschiebung
  
*/

void settings()
{
  // SETTINGS START
  int x = 500;
  int y = 400;
  size(x,y);
  // SETTINGS ENDE
}

void setup()
{
  // SETUP START
  surface.setTitle("< Settings Sketch Titel >");
  surface.setResizable(true);
  surface.setLocation(500,300);
  // SETUP ENDE
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  background(125);
  // DRAW START
  println(millis());
  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  line(0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);
  //println(mouseX + " | " + mouseY);
}
