/*
  
  Processing Tutorial
  Sketch Nr. 19
  Thema : Vererbung
  
  Sketch Inhalte :
  
  extends - Schluesselwort mit dem man eine Klasse angibt von der alle Datenfelder und Methoden geerbt werden
  
  interface - ein Interface ist ein Referenz-Typ in java um das Verhalten von Klassen zu implementieren (gibt Methoden vor)
  
  abstract class - ist eine Klasse die nicht kann keine Instanzen (Objekte) erstellen
  
  implements - Schluesselwort mit dem man ein oder mehrere interfaces angibt, die die Klasse implementieren soll
  
  super - Schluesselwort um auf die Ueberklasse zuzugreifen
  
  default - Schluesselwort, dass erlaubt Methoden mit Koerper in Interfaces zu implementieren
  
*/
Enemy e1, e2;
Player me;
Box o1, o2, o3;
Bush u1, u2, u3, u4, u5;
void setup()
{
  size(1500,750);
  e1 = new Enemy(200.0,200.0,2.25,color(255,0,0),'ü',0.25);
  e2 = new Enemy(1200.0,400.0,4.10,color(0,255,0),'ä',0.15);
  me = new Player(750.0,300.0,4.5,color(255,255,0),'q','w','d','s','a');
  o1 = new Box(random(25,width-25),random(25,height-25));
  o2 = new Box(random(25,width-25),random(25,height-25));
  o3 = new Box(random(25,width-25),random(25,height-25));
  u1 = new Bush(random(25,width-25),random(25,height-25));
  u2 = new Bush(random(25,width-25),random(25,height-25));
  u3 = new Bush(random(25,width-25),random(25,height-25));
  u4 = new Bush(random(25,width-25),random(25,height-25));
  u5 = new Bush(random(25,width-25),random(25,height-25));
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  background(125);
  // CODE START
  
  e1.move(key);
  e2.move(key);
  me.move(key);
  
  e1.drawPerson();
  e2.drawPerson();
  me.drawPerson();
  me.printPosition();
  println(me.colorHex(me.col));

  o1.drawHideout();
  o2.drawHideout();
  o3.drawHideout();
  
  u1.drawHideout();
  u2.drawHideout();
  u3.drawHideout();
  u4.drawHideout();
  u5.drawHideout();
  
  key = ' ';
  
  
  // CODE ENDE
  // NICHT TEIL DES TUTORIALS
  line(0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);
  println(mouseX + " | " + mouseY);
}

void keyPressed()
{
  e1.updateColor(key);
  e2.updateColor(key);
  me.updateColor(key);
}
