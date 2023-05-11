/*
  
  Processing Tutorial
  Sketch Nr. 02
  Thema : Primitive Datentypen
  
  Sketch Inhalte :
  
  Deklaration - Bei der Deklaration wird eine Variable mit Datentyp und Name erstellt, Die Variable hat noch keinen Wert; [DATENTYP] [NAME];
  
  Initialisierung / Zuweisung - Bei der Zuweisung wird einer existierenden Variable ein neuer Wert zugewiesen; [NAME] = [WERT];
  
  Deklaration mit Initialisierung - Deklaration und Zuweisung koennen auch in einer einzigen Zeile auszufuehren; [DATENTYP] [NAME] = [WERT];
  
  Variablennamen
    ~ Sollten mit einem Kleinbuchstaben beginnen
    ~ Sollten keine sonderzeichen beinhalten
    ~ Bei Namen aus mehreren Worten werden diese entwerder gross geschrieben oder mit einem _ getrennt
    ~ Name sollte sinn ergeben, stil sollte einheitlich sein
    ~ NoGos : g679089hguig, GG, g64g657hfg
    ~ Gute Beispiele : xPosition, y_position, zaehler, gesamtbetrag
  
  boolean [1 Bit] - Enthaelt einen Wahrheitswert; Wertebereich : false, true
  
  char [16 Bit / 2 Byte] - Speichert Zeichen im Unicode Format; Wertebereich : 'A','B',...,'a','b',...
  
  byte [8 Bit / 1 Byte] - Speichert ganze Zahlen; Wertebereich : -128 - 127;
  
  int [32 Bit / 4 Byte] - Speichert ganze Zahlen; Wertebereich : -2,147,483,648 - 2,147,483,647
  
  long [64 Bit / 8 Byte] - Speichert ganze Zahlen; Wertebereich : -9,223,372,036,854,775,808 - 9,223,372,036,854,775,807
  
  float [32 Bit / 4 Byte] - Speichert Kommazahlen; Wertebereich : 1.4E-45 - 3.4028235E38
  
  double [64 Bit / 8 Byte] - Speichert Kommazahlen; Wertebereich : 4.9E-324 - 1.7976931348623157E308
  
  Boolscher Operator -
    ~ ! (Negierung) : Invertiert den Wahrheitswert; false -> true; true -> false; Das Ergebnis kann in einer boolean Variable gespeichert werden; a = !b;
    ~ ^ (Exklusiv-Oder) : Prueft ob genau einer von zwei Parametern true ist; Das Ergebnis kann in einer boolean Variable gespeichert werden; a = b ^ c;
    ~ & (Und) : Prueft ob beide Parameter true sind; Das Ergebnis kann in einer boolean Variable gespeichert werden; a = b & c;
    ~ | (Oder) : Prueft ob mindestens ein Parameter true ist; Das Ergebnis kann in einer boolean Variable gespeichert werden; a = b | c;
    
  Arithmetische Operatoren - Rechenoperationen fuer Zahlenwerte
    ~ + (Addition) : Addiert zwei Werte mit einander : c = a + b;
    ~ += (Addition mit Zuweisung) : Addiert einen Wert auf den aktuellen Wert : c += a; (c = c + a;)
    ~ ++ (Prae- / Postinkrement) : Erhohet (inkrementiert) einen Wert : c++; (c += 1; c = c + 1;)
    ~ - (Subtraktion) : Subtrahiert einen Wert von einem anderen Wert : c = a - b;
    ~ -= (Subtraktion mit Zuweisung) : Subtrahiert einen Wert von dem aktuellen Wert : c -= a; (c = c - a)
    ~ -- (Prae- / Postdekrement) : Verringert (dekrementiert) einen Wert : c--; (c -= 1; c = c - 1;)
    ~ * (Multiplikation) : Multipliziert zwei Werte miteinander : c = a * b;
    ~ *= (Multiplikation mit Zuweisung) : Multipliziert einen Wert mit dem aktuellen Wert : c *= a; (c = c * a;)
    ~ / (Division) : Dividiert einen Wert von einem anderen Wert : c = a / b;
    ~ /= (Division mit Zuweisung) : Dividiert einen Wert von dem aktuellen Wert : c /= a; (c = c / a;)
    ~ % (Modulo) : Berechnet den Rest einer Division : c = a % b;
  
  Bitweise Operatoren -
    ~ ~ (Einerkomplement) : Alle Bits des Parameters werden invertiert; a = ~b; 0110.1100 = ~1001.0011
    ~ & (Bitweise Und) : Zwei Parameter werden Bitweise miteinander verglichen; Steht in beiden Bits eine 1, wird eine 1 uebernommen; a = b & c;
    ~ | (Bitweise Oder) : Zwei Parameter werden Bitweise miteinander verglichen; Steht in mind. einem Bit eine 1, wird eine 1 uebernommen; a = b | c;
    ~ ^ (Bitweise Eskl. Oder) : Zwei Parameter werden Bitweise miteinander verglichen; Steht in genau einem Bit eine 1, wird eine 1 uebernommen; a = b ^ c;
    ~ << (Linksschieben) : Verschiebt alle Bits des ersten Parameters um den Wert des zweiten Parameters nach links; a = b << c; 1011 << 1 = 0110;
    ~ >> (Rechtsschieben) : Verschiebt alle Bits des ersten Parameters um den Wert den zweiten Parameters nach rechts; a = b >> c; 1100 >> 2 = 0011;
  
  Sichtbarkeiten von Variablen :
   ~ Bei Variablen wird unter globalen und lokalen Variablen unterschieden
   ~ Es kann ueberall auf globale Variablen zugefriffen werden
   ~ Lokale Variablen werden innerhalb von Funktionen* und Schleifen* angelegt und sind nur innerhalb dieser verwendbar
  
*/

float zaehler = 0.0;

void setup()
{
  // SETUP START
  // ***** Wahrheitswerte *****
  boolean wahr = true;
  boolean falsch;
  
  falsch = false;
  
  boolean nichtWahr = !wahr;
  boolean wahrUndNichtWahr = wahr & nichtWahr;
  boolean wahrOderFalsch = wahr | falsch;
  boolean wahrExklOderTrue = wahr ^ true;
  
  println(wahr);
  println(falsch);
  println(nichtWahr);
  println(wahrUndNichtWahr);
  println(wahrOderFalsch);
  println(wahrExklOderTrue);
  
  // ***** Zahlenwerte *****
  byte inkrementByte;
  inkrementByte = 2;
  
  int divideInt1 = -2134;
  int divideInt2 = -201;
  int divideInt3 = 5032;
  
  long moduloLong1 = 13;
  long moduloLong2 = 2;
  long subtraktionLong = 5433353465L;
  
  println();
  println(inkrementByte++);
  println(++inkrementByte);
  println(inkrementByte);
  println();
  
  subtraktionLong -= 1000000L;
  
  divideInt3 = divideInt1 / divideInt2;
  
  long modulo = moduloLong1 % moduloLong2;
  
  println(subtraktionLong);
  println(divideInt3);
  println(modulo);
  println();
  int oneInt = 1309794694;
  int anotherInt = 1734587165;
  
  int oneAndAnotherInt = oneInt & anotherInt;
  
  println(binary(oneInt));
  println(binary(anotherInt));
  println();
  println(binary(~oneInt));
  println(binary(~anotherInt));
  println();
  println(binary(oneAndAnotherInt));
  println(binary(oneInt | anotherInt));
  println(binary(oneInt ^ anotherInt));
  println();
  println(binary(oneInt << 2));
  println(binary(anotherInt >> 2));
  
  // ***** sichtbarkeiten *****
  int local0 = 0;
  {
    int lokal1 = 0;
    
    local0++;
    {
      int lokal2 = 0;
      
      local0++;
      lokal1++;
      
      lokal2++;
    }
    //lokal2++; // lokal2 existiert nicht ausserhalb der klammern
  }
  // SETUP ENDE
}

void draw()
{
  // DRAW START
  //zaehler += 1.0 / 60;
  //println(zaehler); // printBefehl auskommentiert um setup() lesbar zu machen 
  // DRAW ENDE
}
