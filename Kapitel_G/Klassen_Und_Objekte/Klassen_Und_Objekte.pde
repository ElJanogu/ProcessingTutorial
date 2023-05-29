/*
  
  Processing Tutorial
  Sketch Nr. 18
  Thema : Klassen & Objekte
  
  Sketch Inhalte :
  
  class className {} - Klassen bilden ein Vorlage on der objektorientierten Programmierung aus denen Objekte ergeugt werden koennen
    Eine Klasse besteht aus :
      - Datenfeldern (Klassen-Variablen)
      - Konstruktoren zur Objecktbildung
      - Methoden (Funktion die Teil einer Klasse ist)
  
  final - Das Schluesselwort final legt fest, dass Variablenwerte nicht mehr veraendert werden koennen und Klassen & Methoden nicht vererbt werden koennen
  
  static - Das Schluellsewort static legt fest, dass sich alle Instanzen der Klasse eine Varable oder eine Methode teilen
  
  *public - (Standard) Legt fest, dass ein Datenfeld, ein Konstruktor bzw eine Methode fuer alle anderen Klassen sichtbar ist
  *protected - Legt fest, dass ein Datenfeld, ein Konstruktor bzw eine Methode fuer alle Klassen und Sub-Klassen um package sichtbar ist
  *private - Legt fest, dass ein Datenfeld, ein Konstruktor bzw eine Methode nur fuer die eigene Klasse sichtbar ist
  
  *** Schluesselwoerter funktionieren nicht in Processing, alle .pde dateien eines Projektes werden als eine einzige Subklasse von PApplet verkettet 
  
*/

Spieler s1, s2;
zufallsGenerator zg;

void setup()
{
  // SETUP START
  size(500,500);
  s1 = new Spieler(100.0,100.0,10,#2716F0,'w','s','a','d');
  s2 = new Spieler(400.0,400.0,10,#98D855,'i','k','j','l');
  zufallsGenerator zg = new zufallsGenerator(5,4);
  zufallsGenerator x = new zufallsGenerator(7);
  println(zg.a + "|" + zg.b);
  zufallsGenerator.a = 12;
  println(zg.a + "|" + zg.b);
  zg.a = -5;
  zg.b = -22;
  println(zg.a + "|" + zg.b);
  println(x.a + "|" + x.b);
  // SETUP ENDE
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  background(125);
  // DRAW START
  s1.paintPlayer();
  s2.paintPlayer();
  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  line(0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);
  //println(mouseX + " | " + mouseY);
}

void keyTyped()
{
  s1.movePlayer(key);
  s2.movePlayer(key);
  
  if(key == '7')
  {
    println(zg.zufallsBoolean());
    println(zufallsGenerator.zufallsBoolean());
  } else if(key == '4')
  {
    println(zg.zufallsInt(50));
    println(zufallsGenerator.zufallsInt(25));
  } else if(key == '5')
  {
    println(zg.zufallsInt(-25,25));
    println(zufallsGenerator.zufallsInt(-25,25));
  } else if(key == '1')
  {
    println(zg.zufallsFloat(50.0));
    println(zufallsGenerator.zufallsFloat(50.0));
  } else if(key == '2')
  {
    println(zg.zufallsFloat(-25.0,25.0));
    println(zufallsGenerator.zufallsFloat(-25.0,25.0));
  } else if(key == '0')
  {
    println(zg.zufallsString(3));
    println(zufallsGenerator.zufallsString(4));
    println(zg.zufallsString(5));
    println(zufallsGenerator.zufallsString(6));
    println(zg.zufallsString(7));
    println(zufallsGenerator.zufallsString(8));
  } 
}

void mouseClicked()
{
  s1.changeColor();
  s2.changeColor();
}
