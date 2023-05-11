/*
  
  Processing Tutorial
  Sketch Nr. 03
  Thema : Wrapper Klassen
  
  Sketch Inhalte :
  
  Wrapper Klassen - Wrapper Klassen erweitern primitive Datentypen
    ~ Boolean (boolean)
    ~ Byte (byte)
    ~ Integer (int)
    ~ Long (long)
    ~ Float (float)
    ~ Double (double)
    ~ Wrapperklassen koennen wie ihr primitives Gegenstueck verwendet werden
    ~ Eine Variable, die mit einer Wrapperklasse erstellt worden ist, kann dem Wert null zugewiesen werden
    ~ Wrapperklassen bieten Funktionen zum Vergleich und zur Konvertierung von Daten

*/

void setup()
{
  // SETUP START
  // ***** Wahrheitswerte *****
  boolean pBoolean = false;
  Boolean wBoolean = null;
  
  wBoolean = Boolean.TRUE;
  
  println(Boolean.FALSE); // Boolean.FALSE ist das gleiche wie false
  println(Boolean.TRUE); // Boolean.TRUE ist das gleiche wie true
  
  println(wBoolean.booleanValue()); // gibt den Wert der Variable zuruck
  
  /*
  compare() / compareTo()
  Rueckgabewert ist ein Integer / int
  
  Vergleicht die Parameter miteinander
  Sind beide Parameter identisch wird 0 zurueckgegeben
  Ist der erste Parameter groesser (1 : true, 2 : false) wird 1 zurueckgegeben
  Ansonten wird -1 zurueckgegeben
  
  Alternative : Boolean.compare(wBoolean,pBoolean);
  */
  println(wBoolean.compareTo(pBoolean));

  println(wBoolean.equals(pBoolean)); // Wenn beide Parameter identisch sind wird true zurueckgegeben, ansonsten false

  println(Boolean.logicalAnd(wBoolean,pBoolean)); // Wenn beide Parameter wahr sind wird true zurueckgegeben, ansonsten false
  println(Boolean.logicalOr(wBoolean,pBoolean)); // Wenn mindestend ein Parameter wahr ist wird true zurueckgegeben, ansonsten false
  println(Boolean.logicalXor(wBoolean,pBoolean)); // Wenn genau ein Parameter wahr ist wird true zurueckgegeben, ansonsten false

  /*
  Konvertierungen
  
  Boolean.toString(pBoolean); - Konvertiert einen Boolean zu einem String*
  wBoolean.toString(); - Konvertiert den Boolean zu einem String*
  
  Boolean.valueOf(string); - Kovertiert den String* zu einem Boolean
  Boolean.parseBoolean(string); - Konvertiert den String* zu einem Boolean
  */
  
  println();
  
  // ***** Zahlenwerte (Byte) *****
  byte pByte = -75;
  Byte wByte = 120;
  
  println(Byte.MIN_VALUE); // gibt den kleinsten Wert von Byte an
  println(Byte.MAX_VALUE); // gibt den Hoechsten Wert von Byte an
  
  println(wByte.byteValue()); // gibt den Wert der Variable zuruck
  
  /*
  compare() / CompareTo() / compareUnsigned()
  Rueckgabewert ist ein Integer / int
  
  Vergleicht die Parameter miteinander
  Sind beide Parameter identisch wird 0 zurueckgegeben
  Es wird die Differenz der beiden Parameter zurueckgegeben
  Ist der erste parameter groesser, ist der Rueckgabewert positiv, ansonsten negativ
  compareUnsigned() ignoriert die Vorzeichen
  
  Alternativen : wByte.compareTo(pByte);
               \ Byte.compareUnsigned(wByte,pByte);
  */
  println(Byte.compare(pByte,wByte));
  
  println(wByte.equals(pByte)); // Wenn beide Parameter identisch sind wird true zurueckgegeben, ansonsten false
  
  /*
  Konvertierungen
  
  Byte.toString(byte); - Konvertiert den Byte zu einem String*
  wByte.toString(); - Konvertiert den Byte zu einem String*
  
  Byte.valueOf(string); - Konvertiert den String* zu einem Byte
  Byte.parseByte(string); - Konvertiert den String* zu einem Byte
  
  wByte.intValue(); - Konvertiert den Byte zu einem Integer
  wByte.longValue(); - Konvertiert den Byte zu einem Long
  wByte.floatValue(); - Konvertiert den Byte zu einem Float
  wByte.doubleValue(); - Konvertiert den Byte zu einem Double
  
  Byte.decode(string); - Dekodiert einen String* (Dezimal, Hexadeziaml, Oktal) zu einen Byte
  */
  
  println();
  
  // ***** Zahlenwerte (Integer/Long) *****
  int pInt = -650000;
  Integer wInt = 1500000;

  println(Integer.MIN_VALUE); // gibt den kleinsten Wert von Integer an
  println(Integer.MAX_VALUE); // gibt den hoechsten Wert von Integer an

  println(wInt.intValue()); // gibt den Wert der Variable zuruck
  
  /*
  compare() / CompareTo() / compareUnsigned()
  Rueckgabewert ist ein Integer / int
  
  Funktioniert wie bei Byte
  */
  println(Integer.compareUnsigned(pInt,wInt));

  println(wInt.equals(pInt)); // Wenn beide Parameter identisch sind wird true zurueckgegeben, ansonsten false

  println(Integer.bitCount(pInt)); // gibt an Wie viele Bits der Variable auf 1 gesetzt sind

  println(Integer.highestOneBit(pInt)); // gibt den Wert des hoechsten gesetzten Bits zurueck
  println(Integer.lowestOneBit(wInt)); // gibt den Wert des kleinsten gesetzten Bits zurueck

  println(Integer.numberOfLeadingZeros(wInt)); // gibt die Anzahl der fuehrenden Nullen in Binaerform zuruck
  println(Integer.numberOfTrailingZeros(pInt)); // gibt die Anzahl der abschliessenden Nullen in Binaerform zurueck
  
  println(Integer.max(pInt,wInt)); // gibt den hoeheren der beiden Parameter zurueck
  println(Integer.min(wInt,pInt)); // gibt den kleineren der beiden Parameter zurueck

  println(Integer.sum(pInt,wInt)); // gibt die Summe der beiden Parameter zurueck
  
  println(Integer.reverse(pInt)); // gibt einen Integer zurueck, dessen Bits in umgekehrter Reihenfolge gespeichert wurden 
  println(Integer.toBinaryString(pInt));
  println(Integer.toBinaryString(Integer.reverse(pInt)));
  
  println(Integer.reverseBytes(wInt)); // gibt einen Integer zurueck, dessen bytes in umgekehrter Reihenfolge gespeichert wurden
  println(Integer.toBinaryString(wInt));
  
  /*
  Konvertierungen
  
  Integer.toString(wInt); - Konvertiert den Integer zu einem String*;
  wInt.toString(); - Konvertiert den Integer zu einem String*;
  
  Integer.toBinaryString(pInt); - Konvertiert den Integer zu einem String* der den Binaerwert der Variable beinhaltet
  Integer.toOctalString(wInt); - Konvertiert den Integer zu einem String* der den Oktalwert der Variable beinhaltet
  Integer.toHexString(pInt); - Konvertiert den Integer zu einem String* der den Hexadezimalwert der Variable heinhaltet
  
  Integer.valueOf(string); - Konvertiert den String* zu einem Integer;
  Integer.parseInt(string); - Konvertiert den String* zu einem Integer;
  
  wInt.byteValue(); - Kovertiert den Integer zu einem Byte (uebernimmt die untersten 8 Bit)
  wInt.longValue() - Konvertiert den Integer zu einem Long
  wInt.floatValue(); - Konvertiert den Integer zu einem Float
  wInt.doubleValue(); - Konvertiert den Integer zu einem Double
  
  Integer.decode(string); - Dekodiert einem String* (Dezimal, Hexadeziaml, Oktal) zu einen Integer
  
  */

  println();

  // ***** Zahlenwerte (Float/Double) *****
  float pFloat = -2345.3243;
  Float wFloat = 0.16652832;
  
  println(Float.MIN_VALUE);
  println(Float.MAX_VALUE);
  
  /*
  Wie bei Integer und Long :
  
  Float.compare(pFloat,wFloat);
  wFloat.compareTo(wFloat);
  Float.max(wFloat,pFloat);
  Float.max(pFloat,wFloat);
  Float.sum(wFloat,pFloat);
  
  Float.toString(float);
  wFloat.toString();
  
  Float.toHexString();
  
  Float.valueOf(string);
  Float.parseFloat(string);
  
  wFloat.byteValue();
  wFloat.intValue();
  wFloat.longValue();
  wFloat.doubleValue();
  */
  // SETUP ENDE
}

void draw()
{
  // DRAW START
  // DRAW ENDE
}
