/*
  
  Processing Tutorial
  Sketch Nr. 04
  Thema : Strings
  
  Sketch Inhalte :
  
  String Datentyp - Ist ein nicht-primitiver Datentyp zum speichern von Zeichenketten
    ~ String name = "Hello World"; - Zeichenkette beginnt und endet mit "
  
  + - Strings koennen mit dem + aneinander gehaengt werden
    ~ a = b + c;
  
  '\t' - Fuegt dem String einen Tab an
  
  '\n' - Fuegt dem String einen Zeilenumbruch an
  
  chatAt(#NUM); - Gibt den Char an der angegebenen Position zurueck
    ~ #NUM : Position des Zeichens, Zahlen beginnen ab 0
      |_ _ H e l l o _ W o  r  l  d  _  _  _  _|
      |0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16|
  
  indexOf(#STRING); - Gibt die (erste) Position des angegebenen Strings zurueck
    ~ #STRING : Zeichen, dessen Position gesucht wird
    ~ Wird das Zeichen nicht gefunden, wird -1 zurueckgegeben
    ~ Position des Zeichens, Zahlen beginnen ab 0
  
  lastIndexOf(#STRING); - Gibt die (letzte) Position des angegebenen Strings zurueck
    ~ #STRING : Zeichen, dessen Position gesucht wird
    ~ Wird das Zeichen nicht gefunden, wird -1 zurueckgegeben
    ~ Position des Zeichens, Zahlen beginnen ab 0
  
  compareTo(#STRING); - Vergleicht die Variable mit dem Parameter
    ~ Vergleicht die Strings zeichenweise miteinander
    ~ Sind alle Zeichen jeweils identisch wird 0 zurueckgegeben
    ~ Ist der ASCII-Wert der Variable bei einem Zeichen groesser als der Wer des Parameters wird die Differenz zurueckgegeben
    ~ Analog passiert das selbe, wenn der ACII-Wert des Parameters groesser ist als der Wert der Variable
  
  compareToIgnoreCase(#STRING); - Vergleicht die Variable mit dem Parameter
    ~ Funktiert wie compareTo(), nur dass die Gross- und Kleinschreibung ignoriert wird
  
  isBlank(); - Prueft ob die Zeichenkette nur aus Leerzeichen besteht, dann wird true zurueckgegeben, ansonsten false
  
  isEmpty(); - Prueft ob die Zeichenkette keine Zeichen beinhaltet (also ""), dann wird true zurueckgegeben, ansonsten false
  
  length(); - Gibt die Anzahl der zeichen zurueck aus denen der Streing besteht
  
  startsWith(#STRING); - Prueft ob der String mit dem Parameter beginnt, dann wird true zurueckgegeben, ansonsten false
    ~ #STRING : Zeichenkette auf die geprueft wird
  
  endsWith(#STRING); - Prueft ob der String mit dem Parameter endet, dann wird true zurueck gegeben, ansonsten false
    ~ #STRING : Zeichenkette auf die geprueft wird
  
  contains(#STRING): - Prueft ob der String den Parameter beinhaltet, dann wird true zurueck gegeben, ansonsten false
      ~ #STRING : Zeichenkette auf die geprueft wird
  
  toLowerCase(); - Konvertiert alle Grossbuchstaben der Zeichenkette zu Kleinbuchstaben
  
  toUpperCase(); - Konvertiert alle Kleinbuchstaben der Zeichenkette zu Grossbuchstaben
  
  equals(#OTHER); - Prueft ob der String und der Parameter den gleichen Inhalt haben, dann wird true zurueck gegeben, ansonsten false
    ~ #OTHER : Zeichenkette, die mit der Variable verglichen wird
  
  equalsIgnoreCase(#OTHER); - Prueft ob der String und der Parameter den gleichen Inhalt haben, ignoriert Gross und Kleinschreibung, dann wird true zurueck gegeben
    ~ #OTHER : Zeichenkette, die mit der Variable verglichen wird
  
  concat(#STRING); - haengt den Parameter anden String an
    ~ #STRING : String der an die Variable hinzugefuegt wird
  
  substring(#START); / substring(#START, #ENDE); - gibt einen Teil-String der Variable zurueck
    ~ #START : Ist die Positon des ersten Zeichens des Teil-Strings (startet bei 0, ist inklusive)
    ~ #ENDE : Ist die Position des ersten Zeichens, dass nicht mehr zum Teil-String gehoert (ist nicht inklusive)
  
  repeat(#NUM); - Gibt einen String zurueck der aus dem sich wiederholenden Original besteht
    ~ #NUM : Anzahl der Wiederholungen
  
  replace(#OLD,#NEW); - Gibt einen String zurueck in dem alle Vorkommen eines bestimmten Zeichens / einer bestimmten Zeichenkette ersetzt worden sind
    ~ #OLD : zu ersetzendes Zeichen /  ersetzende Zeichenkette (Typ : Char / String)
    - #NEW : neues Zeichen / neue Zeichenkette (Typ : Char / String)

  trim(); - Gibt eine Kopie des Strings zurueck, bei dem alle fuehrende und anstehende Leerzeichen entfernt wurden
  
  Konvertierungen :
  
  valueOf(#NUM); - Konvertiert eine Zahl in einen String; 2500 -> "2500"
    ~ #NUM : zu konvertierende  Zahl
  
  nf(#NUM); / nf(#NUM, #DIGITS); / nf(#NUM, #LEFT, #RIGHT) - Konvertiert und Formatiert eine Zahl zu einen String
    ~ #NUM : zu konvertierende Zahl
    ~ #DIGITS : Anzahl der Stellen im String Format
    ~ #LEFT : Anzahl der zusaetzlichen Stellen links von der Zahl
    ~ #RIGHT : Anzahl der zusaetzlichen Stellen rechts von der Zahl 
  
  nfs(#NUM, #DIGITS); / nfs(#NUM, #LEFT, #RIGHT); - Konvertiert und Formatiert eine Zahl zu einen String
    ~ #NUM : zu konvertierende Zahl
    ~ #DIGITS : Anzahl der Stellen im String Format
    ~ #LEFT : Anzahl der zusaetzlichen Stellen links von der Zahl
    ~ #RIGHT : Anzahl der zusaetzlichen Stellen rechts von der Zahl
    ~ Bei negativen Zahlen wird ein - vor die Zahl geschrieben, Bei positiven wird ein Leerzeichen vor die Zahl geschrieben
  
  nfp(#NUM, #DIGITS); / nfp(#NUM, #DIGITS); - Konvertiert und Formatiert eine Zahl zu einen String
    ~ #NUM : zu konvertierende Zahl
    ~ #DIGITS : Anzahl der Stellen im String Format
    ~ #LEFT : Anzahl der zusaetzlichen Stellen links von der Zahl
    ~ #RIGHT : Anzahl der zusaetzlichen Stellen rechts von der Zahl
    ~ Bei negativen Zahlen wird ein - vor die Zahl geschrieben, Bei positiven wird ein + vor die Zahl geschrieben
  
  nfc(#NUM); / nfc(#NUM,#RIGHT) - Konvertiert und Formatiert eine Zahl zu einen String
    ~ #NUM : zu konvertierende Zahl
    ~ #RIGHT : anzahl der Nachkommastellen die uebernommen werden sollen
  
*/

void setup()
{
  // SETUP START
  String hello = "  Hello ";
  String world = "World    ";
  
  String helloWorld = hello + world;
  
  println("|" + helloWorld + "|");
  
  println("TAB\t|");
  
  println("Zeilenumbruch\n|");
  
  println();
  
  char character = helloWorld.charAt(9);
  println(character);
 
  println(helloWorld.indexOf("Wo"));

  println(helloWorld.lastIndexOf("o"));
  
  println("BD".compareTo("BB"));
  
  println("bB".compareToIgnoreCase("Bc"));
  
  println();
  
  println(helloWorld.isBlank());
  
  println("   ".isBlank());
  
  println(hello.isEmpty());
  
  println("".isEmpty());
  
  println();
  
  println(helloWorld.length());
  
  println(helloWorld.startsWith(" "));
  
  println(helloWorld.endsWith(" "));
  
  println(helloWorld.contains("Wor"));
  
  println(helloWorld.toLowerCase());
  
  println(helloWorld.toUpperCase());
  
  println(helloWorld.equals(helloWorld.toLowerCase()));
  
  println(helloWorld.equalsIgnoreCase(helloWorld.toUpperCase())); 
  
  println();
  
  String andererString = helloWorld.concat("!!!");
  
  println(andererString);
  
  println(helloWorld.substring(8));
  
  println(helloWorld.substring(5,11));
  
  println(helloWorld.repeat(5));
  
  println();
  
  println(helloWorld.replace('W','_'));
  
  println(helloWorld.trim());
  // SETUP ENDE
}

void draw()
{
  // DRAW START 
  // DRAW ENDE
}
