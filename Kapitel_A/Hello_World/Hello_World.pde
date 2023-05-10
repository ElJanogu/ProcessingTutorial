/*
  
  Processing Tutorial
  Sketch Nr. 01
  Thema : Hello World
  
  Sketch Inhalte :
  
  Sketch-Arten : 
  "statisch" : beinhaltet keine Animationen oder Interaktionen, Quellcode wird nur ein einziges mal ausgefuehrt
  "dynamisch" : ermoeglicht Animationen und Interaktionen (setup, draw ...), das Programm wird kontinuierlich im Loop ausgefuert oder wartet auf Nutzereingaben
  
  void setup(){...} - Funktion, die zu Programmstart ein einziges mal ausgefuehrt wird
  void draw(){...} - Funktion, die nach den ausfuehren von setup() im loop ausgefuehrt wird, jeder Aufruf zeichnet die Leinwand neu
  
  print(x) - Schreibt den Parameter in die Konsole
    ~ x : der Parameter, der in die Konsole geschrieben wird
  
  println(x) - Schreibt den Parameter in die Konsole, Endet die Ausgabe mit einem Zeilenumbruch
    ~ x : der Parameter, der in die Konsole geschrieben wird
  
  // - Einzeiliger Kommentar; Kommentare dienen zur Dokumentation, sie werden von der JVM ignoriert
  
  /*
  [...]
  * / - Mehrzeiliger Kommentar; Kommentare dienen zur Dokumentation, sie werden von der JVM ignoriert

*/

void setup()
{
  // SETUP START
  print("Starte Programm ... "); // schreibe "Starte Programm ... " ohne Zeilenumbruch in die Konsole

  println("Setup abgeschlossen"); // schreibe "Setup abgeschlossen" mit Zeilenumbruch in die Konsole
  // SETUP ENDE
}

void draw()
{
  // DRAW START
  /*
  Schreibe bis zum Programmende
  "Hello World" in die Konsole
  */
  print("Hello World ");
  // DRAW ENDE
}
