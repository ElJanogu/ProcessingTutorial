/*
  
  Processing Tutorial
  Sketch Nr. 17
  Thema : Funktionen
  
  Sketch Inhalte :
  
  Funktionen : Eine Funktion ist eine Zusammenstellung von mehreren Befehlen, sie erlauben und sie selbe reihenfolge an Befehlen haeufig aufzurufen ohne
      den Code zu kopieren
      
      Eine Funktion braucht einen Rueckgabetyp und einen Funktionsnamen, die Parameter sind optional
      [Rueckgabetyp] [Funktionsname] (Parameter) {
         ......
      }
      
      Rueckgabetype : void, boolean, Boolean, byte, char, int, Integer, long, Long, float, Float, double, Double, String,
        Color, Arrays, Listen, Maps, Vektoren, Dateien*
      Funktionsname : alles was auch bei einer Variable funktionieren wuerde
      Parameter : boolean, Boolean, byte, char, int, Integer, long, Long, float, Float, double, Double, String, Color, Arrays, Listen, Maps, Vektoren, Dateien*        
*/

void setup()
{
  // SETUP START
  hallo();
  hallo("ElJanogu");
  
  int a = -4;
  int b = 44;
  Integer c = null;
  Integer d = 274;
  Integer e = -53;
  
  int w = addieren(a,b);
  Integer x = addieren_1(a,b);
  Integer y = addieren(c,d);
  Integer z = addieren(d,e);
  
  println(w);
  println(x);
  println(y);
  println(z);
  
  println();
  
  float[] floats = randomFloats(10,-2.75,12.5);
  ArrayList<Integer> ints = randomInts(7,-1,22);

  HashMap<Integer,Float> myMap = mergeArrays(ints,floats);

  printArray(floats);
  println();
  printArray(ints.toArray());
  println();
  println(myMap);
  
  println();

  println(fakultaetSchleife(10));
  println(fakultaetRekursion(10));
  // SETUP ENDE
}
void draw()
{
  // NICHT TEIL DES TUTORIALS
  background(125);
  // DRAW START 
  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  //line(0, mouseY, width, mouseY);
  //line(mouseX, 0, mouseX, height);
  //println(mouseX + " | " + mouseY);
}

// ***** void, ueberladene Funktion *****

void hallo()
{
  println("Hallo !");
  // hallo("");
}

void hallo(String name)
{
  println("Hallo " + name + "!");
}

/*

JVM kann String hallo(String) und void hallo(String) nicht voneinander unterscheiden

String hallo(String name)
{
  return "Hallo " + name + "!";
}
*/

// ***** Funktionen mit Rueckgabetyp *****

int addieren(int a, int b)
{
  return a + b;
}

float addieren(float a, float b)
{
  return a + b;
}

Integer addieren_1(int a, int b)
{
  return addieren(a,b);
}

Integer addieren(Integer a, Integer b)
{
  return a == null || b == null ? null : a+b;
  /*
  if(a == null || b == null) return null;
  return a + b;
  */
}

// ***** arrays und listen *****
float[] randomFloats(int anzahl, float min, float max)
{
  if(min >= max) return null;
  
  float[] array = new float[anzahl];
  
  for(int index = 0; index < array.length; index++)
  {
    array[index] = random(min,max);
  }
  
  return array;
}

ArrayList<Integer> randomInts(int anzahl, float min, float max)
{
  if(min >= max) return null;
  
  ArrayList<Integer> arrayList = new ArrayList<Integer>();
  
  for(int index = 0; index < anzahl; index++)
  {
    arrayList.add(int(random(min,max)));
  }
  
  return arrayList;
}

HashMap<Integer,Float> mergeArrays(ArrayList<Integer> ints, float[] floats)
{
  HashMap<Integer,Float> map = new HashMap<>();
  int minSize = min(ints.size(),floats.length);
  
  for(int index = 0; index < minSize; index++)
  {
    map.put(ints.get(index),floats[index]);
  }
  
  return map;
}

/*
***** Rekursion *****
Rekursive Funktionen koennen dazu genutzt werden um schleifen zu vermeiden und die Quellcode kurz zu halten
Eine rekursive Funktion besteht aus 2 teilen : der Abbruchbedingung und dem rekursiven Aufruf

Beispiel : 
Fakultaet berechnen n! = ?
n! ist definiert als n * (n-1) * (n-2) * ... * 2 * 1

6! = 6 * 5 * 4 * 3 * 2 * 1 => 720
*/
Long fakultaetSchleife(int n)
{
  Long fakultaet = 1L;
  
  for(int index = 1; index <= n; index++)
  {
    fakultaet *= index;
  }
  
  return fakultaet;
}

Long fakultaetRekursion(int n)
{
  return n <= 0 ? 1 : n * fakultaetRekursion(n-1);
  
  /*
  if(n <= 0) return 1;
  return n * fakultaetRekursion(n-1);
  */
}
