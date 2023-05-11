/*
  
  Processing Tutorial
  Sketch Nr. 05
  Thema : Datenkonvertierung
  
  Sketch Inhalte :
  
  boolean(x); - Konvertiert einen Integer oder String zu einen Boolean
    ~ Integer : Ist der Wert nicht 0, wird true zurueck gegeben; Ist der Wert 0, wird false zurueck gegeben
    ~ String : Jeder Wert der "True" ergibt, wobei Gross- und Kleinschreibung ignoroiert werden, wird true zurueck gegeben, ansonsten false
    ~ Boolean.valueOf(string) / Boolean.parseBoolean(string) sind Alternativen um einen String zu einem Boolean zu konvertieren
    ~ x : Ist der Wert, der zu einem Boolean konvertiert werden soll
    
  char(x); - Konvertiert den Wert eines primitiven Datentyps (byte, int) zu einem char
    ~ Befindet sich der Wert der Variable ausserhalb des Zahlenbereiches von char werden lediglich die letzten 2 Bytes uebernommen
    ~ x : Ist der Wert, der zu einem char konvertiert werden soll
    
  byte(x); - Konvertiert den Wert eines primitiven Datentyps (boolean, char, int, long, float, double) zu einem Byte
    ~ Bei Fliesskommazahlen werden die Nachkommastellen weggeschnitten
    ~ Befindet sich der Wert der Variable ausserhalb des Zahlenbereiches von Byte wird lediglich das letzte Byte uebernommen
    ~ Byte.valueOf(string) / Byte.parseByte(string) sind Moeglichkeiten um einen String zu einem Byte zu konvertieren
    ~ var.byteValue() kann genutzt werden um eine Variable (Int, Long, Float und Double) zu einem Byte konvertiert werden
    ~ x : Ist der Wert, der zu einem Byte konvertiert werden soll
  
  int(x); - Konvertiert den Wert eines primitiven Datentyps (boolean, byte, char, long, float) oder String zu einem int
    ~ Bei Fliesskommazahlen fallen die Nachkommastellen weg
    ~ Bei einem Long ausserhalb des Wertebereiches von Integer wird der hoechstmoegliche / kleinste Wert uebernommen
    ~ Integer.valueOf(string) ist eine Alternative um einen String zu einem int zu konvertieren
    ~ var.intValue() kann genutzt werden um eine Variable (Byte, Long, Float und Double) zu einem Integer konvertiert werden
    ~ x : Ist der Wert, der zu einem Integer konvertiert werden soll
    
    ~ var.longValue() kann genutzt werden um eine Variable (Byte, Integer, Float und Double) zu einem Long konvertiert werden
    
  float(x); - Konvertiert den Wert eines Integers oder Strings zu einem float
    ~ Der String muss aus einer Zahl bestehen, dem Integer werden Nachkommastellen hinzugefuegt
    ~ var.floatValue() kann genutzt werden um eine Variable (Byte, Integer, Long und Double) zu einem Float konvertiert werden
    ~ x : Ist der Wert, der zu einem Float konvertiert werden soll
    
    ~ var.doubleValue() kann genutzt werden um eine Variable (Byte, Integer, Long und Float) zu einem Double konvertiert werden

  str(x); - Konvertiert den Wert eines primitiven Datentyps (boolean, byte, char, int, float) zu einem String
    ~ Boolean.toString(boolean); Byte.toString(byte); Integer.toString(); Long.toString(); Float.toString(), Double.toString() Sind Alternativen zur Konvertierung
    ~ x : Ist der Wert, der zu einem Float konvertiert werden soll
  
  binary(#NUM); / binary(#NUM, #DIGITS); - Konvertiert den Wert eines int, byte oder char zu einem String in Binaernotation
    ~ #NUM : Variable die konvertiert werden soll
    ~ #DIGITS : Anzahl der Binaerstellen (max. 32)
  
  unbinary(#STRING); - Konvertiert einen Binaerstring zu einem Integer
    ~ #STRING : Variable die konvertiert werden soll
  
  hex(#NUM); / hex(#NUM, #DIGITS); - Konvertiert den Wert eines int, byte oder char zu einem String in Hexadezimalnotation
    ~ #NUM : Variable die konvertiert werden soll
    ~ #DIGITS : Anzahl der Hecadezimalstellen (max. 8)
  
  unhex(#STRING); - Konvertiert einen Hexadezimalstring zu einem Integer
    ~ #STRING : Variable die konvertiert werden soll
  
  Byte.decode(#STRING); Integer.decode(#STRING); Long.decode(#STRING); - Dekodiert einen Dezimal-, Hexadeziaml oder Oktalstring zu einem Byte, Integer oder Long
    ~ Hexadezimalzahlen starten mit #, 0x oder 0X
    ~ Oktalzahlen starten mit 0
    ~ Ein String kann optional mit + oder - beginnen
  
  Integer.toBinaryString(integer); Long.toBinaryString(long); - Konvertiert einen Integer / Long zu einem String in Binaernotation
    ~ integer/long : Variable die konvertiert werden soll
  
  Integer.toOctalString(integer); Long.toOctalString(long); - Konvertiert einen Integer / Long zu einem String in Oktalnotation
  
  Integer.toHexString(integer); Long.toHexString(long); Float.toHexString(); Double.toHexString(); 
      - Konvertiert einen Integer / Long / Float / Double zu einem String in Hexadezimalnotation
  
  Alternativ koennen char, byte, int, long, float und double auch mit x = (datentyp) y; konvertiert werden
  
  nf(#NUM); / nf(#NUM, #DIGITS); / nf(#NUM, #LEFT, #RIGHT) - Konvertiert und Formatiert eine Zahl zu einen String
    ~ #NUM : zu konvertierende Zahl
    ~ #DIGITS : Anzahl der Stellen im String Format
    ~ #LEFT : Anzahl der vorkommastellen links von der Zahl
    ~ #RIGHT : Anzahl der nachkommastellen rechts von der Zahl 
  
  nfs(#NUM, #DIGITS); / nfs(#NUM, #LEFT, #RIGHT); - Konvertiert und Formatiert eine Zahl zu einen String
    ~ #NUM : zu konvertierende Zahl
    ~ #DIGITS : Anzahl der Stellen im String Format
    ~ #LEFT : Anzahl der vorkommastellen links von der Zahl
    ~ #RIGHT : Anzahl der nachkommastellen rechts von der Zahl
    ~ Bei negativen Zahlen wird ein - vor die Zahl geschrieben, Bei positiven wird ein Leerzeichen vor die Zahl geschrieben
  
  nfp(#NUM, #DIGITS); / nfp(#NUM, #LEFT, #RIGHT); - Konvertiert und Formatiert eine Zahl zu einen String
    ~ #NUM : zu konvertierende Zahl
    ~ #DIGITS : Anzahl der Stellen im String Format
    ~ #LEFT : Anzahl der vorkommastellen links von der Zahl
    ~ #RIGHT : Anzahl der nachkommastellen rechts von der Zahl
    ~ Bei negativen Zahlen wird ein - vor die Zahl geschrieben, Bei positiven wird ein + vor die Zahl geschrieben
  
  nfc(#NUM); / nfc(#NUM,#RIGHT) - Konvertiert und Formatiert eine Zahl zu einen String
    ~ #NUM : zu konvertierende Zahl
    ~ #RIGHT : anzahl der Nachkommastellen die uebernommen werden sollen

*/

void setup()
{
  // SETUP START
  boolean bool = true;
  Boolean bool2 = bool;
  char c = 'z';
  byte b = 120;
  Byte b2 = b;
  int i = 1250000000;
  Integer i2 = i;
  long l = -5000000000000L;
  Long l2 = l;
  float f = 65.345674;
  Float f2 = f;
  double d = -500.032457D;
  Double d2 = d;
  String string = "Hello World";

  // ***** boolean *****
  println("Boolean : ");
  
  println(boolean(c));
  println(boolean(b));
  println(boolean(i));
  println(boolean(string));
  
  println();
  
  // ***** char *****
  println("char : ");
  
  println(char(b));
  println(char(i));
  println((char)l);
  println((char)f);
  println((char)d);
  
  println();
  
  // ***** byte *****
  println("byte : ");
  
  println(byte(bool));
  println(byte(c));
  println(byte(i));
  println(byte(l));
  println(byte(f));
  println(d2.byteValue());
  println(Byte.valueOf("122"));

  println();
  
  // ***** int *****
  println("int : ");
  
  println(int(bool));
  println(int(b));
  println(int(c));
  println(int(l));
  println(int(f));
  println(d2.intValue());
  println(Integer.valueOf("-1200000"));

  println();
  
  // ***** long *****
  println("long : ");
  
  println((long)c);
  println(b2.longValue());
  println(i2.longValue());
  println(f2.longValue());
  println(d2.longValue());
  println(Long.valueOf("-200000000"));
  
  println();
  
  // ***** float *****
  println("float : ");
  
  println(float(c));
  println(float(b));
  println(float(i));
  println(l2.floatValue());
  println(d2.floatValue());
  println(float("22000.25"));
  
  println();
  
  // ***** double *****
  println("double : ");
  
  println((double)c);
  println(b2.doubleValue());
  println(i2.doubleValue());
  println(l2.doubleValue());
  println(f2.doubleValue());
  println(Double.valueOf("200.205323"));
  
  println();
  
  // ***** String *****
  println("String : ");
  
  println(bool2.toString());
  println(str(c));
  println(str(b));
  println(i2.toString());
  println(str(l));
  println(str(f));
  println(d2.toString());
  
  println();
  
  // ***** binaer *****
  println("Binaer");
  
  println(binary(66));
  println(binary(22573, 8));
  println(unbinary("11011010"));
  
  println(Integer.toBinaryString(66));
  
  println();
    
  // ***** hexadezimal *****
  println("Hexadezimal");
  
  println(hex(5112523));
  println(hex(27));
  
  println(unhex("004E02CB"));
  
  println(Integer.toHexString(5112523));
  
  println(Integer.decode("#FA950C"));
  println(Integer.decode("-0xFA950C"));
  println(Integer.decode("0XFA950C"));
  
  println();
  
  // ***** Oktal *****
  println("Oktal");
  
  println(Integer.toOctalString(5125));
  
  println(Integer.decode("-0300716"));
  
  println();
  
  // ***** string zu zahl formation *****
  println("String Formatierung");
  
  // float version unterstuetzt keinen #DIGITS Paramerer 
  
  println(nf(200));
  println(nf(-22.25));
  
  println(nf(-7245,8));
  println(nf(512.7534)); 
  
  println(nf(63934,6,1));
  println(nf(-0.2573,2,2));
  
  println();
  
  // float version unterstuetzt keinen #DIGITS Paramerer 
  
  println(nfs(200,8));
  println(nfs(-22,4));
  
  println(nfs(28472,6,2));
  println(nfs(-64000.25,6,2));
 
  println();
  
  // float version unterstuetzt keinen #DIGITS Paramerer 
  
  println(nfp(200,8));
  println(nfp(-22,4));
  
  println(nfp(2234.5234,6,2));
  println(nfp(-0.234576,4,4));
  
  println();
  
  // nfc(#NUM) wird nicht mit float unterstuetzt
  
  println(nfc(23045));
  println(nfc(-23));
  
  println(nfc(-23.5364,2));
  println(nfc(0.23,4));
  // SETUP ENDE
}

void draw()
{
  // DRAW START
  // DRAW ENDE
}
