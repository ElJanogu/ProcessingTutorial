/*
  
  Processing Tutorial
  Sketch Nr. 36
  Thema : Dateien Sonstiges
  
  Sketch Inhalte :
  
  launch(argumente); - Versucht eine Applikation zu starten
    ~ argumente : Startargumente
  
  selectFolder(nachricht,callback); / selectFolder(nachricht,callback,datei); / selectFolder(nachricht,callback,datei,callbackobjekt); -
    ~ nachricht : Name des Pop-Up Fensters
    ~ callback : Name der Funktion, die nach der Auswahl ausgefuehrt wird
    ~ datei : 
    ~ callbackobjekt : 
  
  selectInput(nachricht,callback); / selectInput(nachricht,callback,datei); / selectInput(nachricht,callback,datei,callbackobjekt); -
    ~ nachricht : Name des Pop-Up Fensters
    ~ callback : Name der Funktion, die nach der Auswahl ausgefuehrt wird
    ~ datei : ???
    ~ callbackobjekt : ??? 
  
  selectOutput(nachricht,callback); / selectOutput(nachricht,callback,datei); / selectOutput(nachricht,callback,datei,callbackobjekt); -
    ~ nachricht : Name des Pop-Up Fensters
    ~ callback : Name der Funktion, die nach der Auswahl ausgefuehrt wird
    ~ datei : ???
    ~ callbackobjekt : ???
  
*/

void setup()
{
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  background(125);
  // DRAW START
   
  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  line(0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);
  //println(mouseX + " | " + mouseY);
}

void keyPressed()
{
  if(key == 'q')
  {
    println("Launch text");
    launch("A://OrdnerA/OrdnerB/TEST.txt");
  } else if(key == 'w')
  {
    selectFolder("Waehle einen Ordner","wahl");
  } else if(key == 's')
  {
    selectInput("Waehle einen Ordner","wahl");
  } else if(key == 'x'){
    selectOutput("Waehle einen Ordner","wahl");
  }
}

void wahl(File auswahl)
{
  if (auswahl == null) {
    println("Fenster wurde geschlossen.");
  } else {
    println("Nutzerauswahl :  " + auswahl.getAbsolutePath());
  }
}
