/*
  
  Processing Tutorial
  Sketch Nr. 20
  Thema : Arrays
  
  Sketch Inhalte :
  
  Ein Array kann eine Liste von Daten speichern, auf die ueber Indizes zugegriffen wird
  
  Deklaration - Bei der Deklaration eines Arrays gibt man einen Datentyp und Namen; Diesmal mit einem [] um festzulegen, dass es sich um ein Array handelt
      - [DATENTYP][[]] [NAME]; oder [DATENTYP] [NAME][[]];
  
  Initialisierung / Zuweisung - Bei der Initialisierung wird entweder die Groesse des Arrays festgelegt, oder die Startterte werden direkt hineingeschrieben 
      Alternativ kann man auch ein bereits inizialisiertes Array kopieren
      - [NAME] = new [DATENTYP][#ZAHL];, [NAME] = new [DATENTYP][[]]{value1, value2, ...}; oder [NAME] = [ANDERESARRAY];
  
  Deklaration mit Initialisierung - Deklatation und Initialisierung koennen auch in einer Zeile durchgefuehrt werden
    ~ [DATENTYP][[]] [NAME] = new [DATENTYP] [[#GROESSE]];
    ~ [DATENTYP] [NAME][[]] = new [DATENTYP] [[#GROESSE]];
    ~ [DATENTYP] [NAME][[]] = new [DATENTYP] [[]] {value1, value2, ...};
    ~ [DATENTYP] [NAME][[]] = {value1, value2, ...};
    ~ Ein Array mit der Groesse 10, besitzt die indizes von 0 - 9
  
  append(#ARRAY,#VALUE); - Vergroessert das Array um ein Element und schreibt die Daten in die neue Position
    ~ #ARRAY : Array, das erweitert werden soll
    ~ #VALUE : Wert, der hinzugefuegt werden soll
  
  shorten(#ARRAY); - Verkleinert das Array um einen Index
    ~ #ARRAY : Array, das verkleinert werden soll
  
  expand(#ARRAY); / expand(#ARRAY,#SIZE); - Veraendert die Groesse eines Arrays
    ~ #ARRAY : Array, das angepasst werden soll
    ~ #SIZE : Neue Groesse des Array (ohne diesem Parameter wird die Groesse des Arrays verdoppelt)
  
  concat(#ARRAY1, #ARRAY2); - Verkettet zwei Array miteinander, beide Arrays muessen vom selben Datentyp stammen
    ~ #ARRAY1 : Erstes Array zur Verkettung
    ~ #ARRAY2 : Zweites Array zur Verkettung
  
  splice(#ARRAY,#WERT,#INDEX); - Fuegt einen Wert oder ein Array in eine bestimme Position eines Arrays
    ~ #ARRAY : Array in das etwas eingefuegt wird
    ~ #WERT :  Wert oder Array, das eingefuegt wird
    ~ #INDEX : Position des Arrays in die der Wert / das Array eingefuegt wird (beginnend ab 0)
  
  arrayCopy(#QUELLE,#ZIEL); / arrayCopy(#QUELLE,#ZIEL,#LENGTH); / arrayCopy(#QUELLE,#Q-POS,#ZIEL,#Z-POS,#LENGTH); 
      - Kopiert ein Array (oder einen Teil davon) in ein anderes Array
    ~ #QUELLE : Array von dem kopiert wird
    ~ #Q-POS : Position im Quell-Array, ab der kopiert wird
    ~ #ZIEL : Array in das geschrieben wird
    ~ #Z-POS : Position im Ziel-Array, ab der geschrieben wird
    ~ #LENGTH : Anzahl der Indizes die kopiert wird

  subset(#ARRAY,#START); / subset(#ARRAY,#START,#COUNT); - Extrahiert ein Array von Elementen aus einem existierenden Array
    ~ #ARRAY : Array, aus dem extrahiert wird
    ~ #START : Array Position, ab der extrahiert wird
    ~ #COUNT : Anzahl der Elemente die extrahiert werden
  
  reverse(#ARRAY); - Kehrt die Reigenfolge der Elemente eines Arrays um
    ~ #ARRAY : Array bei dem die Reigenfolge der Elemente umgekehrt wird
  
  sort(#ARRAY); / sort(#ARRAY,#ANZAHL); - Sortiert ein Array (oder einen Teil davon) vom kleinsten Element bis zum groessten, Strings werden alphabetisch sortiert
    ~ #ARRAY : Array, das sortiert wird
    ~ #ANZAHL : Anzahl der Elemente, die sortiert wird
  
  printArray(#ARRAY); - Schreibt ein Array in die Konsole
    ~ #ARRAY : Array ( -\_(._.)_/- )
  
  ----------
  
  join(#ARRAY,#SEPARATOR); - Kombiniert ein Array von Strings in einen einzigen String, jeder String wird durch den 'Separator' getrennt
    ~ #ARRAY : Array, das kombiniert wird
    ~ #SEPARATOR : Separator, der die Strings aus dem Array trennt
  
  split(#WERT,#SPLIT); - Spaltet einen String mit der Hilfe eines Trennzeichens in ein String Array
    ~ #WERT : String, der zu einem Array gespalten wird
    ~ #SPLIT : Trennzeichen (oder String), welches den String aufspaltet
  
  splitTokens(#WERT); / splitTokens(#WERT,#SPLIT); - Spaltet einen String mit der Hilfe mehrerer Trennzeichen in ein String Array
    ~ #WERT : String, der zu einem Array gespalten wird
    ~ #SPLIT : String aus mehreren trennzeichen, welche den String aufspalten
    ~ Wird kein Trennzeichen angegeben werden alle Whitespaces genutzt, unklusive \t, \n, \r und \f
  
  ----------
  
  Dimensionen : Arrays koennen mehr als nur eine Dimension haben.
    ~ #1 [DATENTYP][[]]             [NAME] = new [DATENTYP][[x]]
    ~ #2 [DATENTYP][[]][[]]         [NAME] = new [DATENTYP][[x]][[y]]
    ~ #3 [DATENTYP][[]][[]][[]]     [NAME] = new [DATENTYP][[x]][[y]][[z]]
    ~ #4 [DATENTYP][[]][[]][[]][[]] [NAME] = new [DATENTYP][[x]][[y]][[z]][[a]]
    ~ .....
    
    ~ char[[]][[]] myArray = { {'A','D','T'},
                           {'F','C','L'},
                           {'Y','R','P'},
                           {'E','Q','N'} };
  
    ~ Nutze die Funktionen nur fuer eindimensionale Arrays
  
*/

color farbe;
int zahl;
int[][] farben;

void setup()
{
  // SETUP START
  size(800,800);

  String[] woerter;
  String woerter2[] = new String[4];
  String[] testArray;
  
  woerter2[0] = "Sketch13";
  woerter2[1] = "Arrays";
  woerter2[2] = "ERROR";
  woerter2[3] = "404";
  
  woerter = new String[]{"Hello","World","Processing"};

  println("println() :");
  println(woerter);
  
  println();
  
  println("printArray() :");
  printArray(woerter);
  
  println();
  
  println("print mit for");
  for(int index = 0; index < woerter.length; index++){
    println("["+index+"] \""+woerter[index]+"\"");
  }
  
  println();
  // ***** append *****
  println("append : ");
  print("Original : ");
  println(woerter);
  
  testArray = append(woerter, "testString");
  print("Append : ");
  println(testArray);
  
  println();
  // ***** shorten *****
  println("shorten : ");
  print("Original : ");
  println(testArray);
  
  testArray = shorten(testArray);
  print("Shorten : ");
  println(testArray);
  
  println();
  // ***** expand *****
  println("expand : ");
  print("Original : ");
  println(woerter2);
  
  testArray = expand(woerter2);
  print("Expand (ohne Size) : ");
  println(testArray);
  
  testArray = expand(woerter2,woerter2.length+2);
  print("Expand (Size > Array) : ");
  println(testArray);
  
  testArray = expand(woerter2,2);
  print("Expand (Size < Array) : ");
  println(testArray);
  
  println();
  // ***** concat *****
  println("concat :");
  print("Array1 : ");
  println(woerter);
  
  print("Array2 : ");
  println(woerter2);
  
  testArray = concat(woerter, woerter2);
  print("Concat : ");
  println(testArray);
  
  println();
  // ***** splice *****
  println("splice : ");
  print("Original : ");
  println(woerter);
  
  testArray = splice(woerter,"SPLICE",2);
  print("Splice String : ");
  println(testArray);
  
  testArray = splice(woerter,woerter2,1);
  print("Splice Array : ");
  println(testArray);
  
  println();
  // ***** ArrayCopy *****
  println("arrayCopy : ");
  print("Array1 : ");
  println(woerter);
  
  print("Array2 : ");
  println(woerter2);
  
  testArray = new String[3];
  
  /*
  (Versucht) Alle Elemente des woerter2 Array beginnend ab index 0
  in das testArray beginnend ab index 0
  Wirft eine Exception weil das Quell-Array groesser ist als das Ziel-Array
  */
  //arrayCopy(woerter2,testArray);
  
  for(int index = 0; index < testArray.length; index++){
    testArray[index] = woerter[index];
  }
  /*
  Kopiert testArray.length (3) Elemente
  vom woerter2 Array beginnend ab index 0
  in das testArray Array beginnend ab index 0
  */
  arrayCopy(woerter2,testArray,testArray.length);
  print("ArrayCopy 'Voll' : ");
  println(testArray);
  
  for(int index = 0; index < testArray.length; index++){
    testArray[index] = woerter[index];
  }
  /*
  Kopiert 1 Element
  vom woerter2 Array beginnedn ab index 0
  in das testArray Array beginnend ab index 0
  */
  arrayCopy(woerter2,testArray,1); // Kopiert die ersten 2 Elemente von woerter2 in die ersten zwei Elemente des testArrays
  print("ArrayCopy 'Teil' : ");
  println(testArray);
  
  for(int index = 0; index < testArray.length; index++){
    testArray[index] = woerter[index];
  }
  /*
  Kopiert 1 Element
  vom woerter2 Array beginnend ab Index 1
  in das testArray Array beginnedn ab index 2
  */
  arrayCopy(woerter2,1,testArray,2,1); // Kopiert ein Element
  print("ArrayCopy 'Teil-Position' : ");
  println(testArray);
  
  println();
  // ***** subset *****
  println("subset : ");
  woerter = concat(woerter,woerter2);
  print("Original : ");
  println(woerter);
  
  testArray = subset(woerter,3);
  print("Subset ab Index 3 : ");
  println(testArray);
  
  testArray = subset(woerter,1,4);
  print("Subset ab Index 1, 4 Elemente : ");
  println(testArray);
  
  println();
  // ***** reverse *****
  println("reverse : ");
  print("Original : ");
  println(woerter);
  testArray = reverse(woerter);
  print("Reverse : ");
  println(testArray);
  
  println();
  // ***** sort *****
  println("sort : ");
  print("Original : ");
  println(woerter);
  
  testArray = sort(woerter);
  print("Reverse 'Alle' : ");
  println(testArray);
  
  testArray = sort(woerter,4);
  print("Reverse 'Teil' : ");
  println(testArray);
  
  println();
  // ...
  
  // ***** join *****
  println("join : ");
  print("Original : ");
  println(woerter);
  
  String stringArray = join(woerter, " : ");
  print("Join : ");
  println(stringArray);
  
  println();
  // ***** split *****
  println("split : ");
  stringArray = "404,  ,., Hello, Sketch13 World., ERROR. Processing .Arrays";
  println("Original : " + stringArray);
  testArray = stringArray.split(" ");
  println("Split Space : " + join(testArray,"#"));
  
  testArray = stringArray.split(", ");
  println("Split ,Space : " + join(testArray,"#"));
  
  println();
  // ***** splitTokens *****
  println("splitTokens : ");
  println("Original : " + stringArray);
  testArray = splitTokens(stringArray,", ");
  println("splitTokens ,Space : " + join(testArray,"#"));
  
  testArray = splitTokens(stringArray,", .");
  println("splitTokens ,Space. : " + join(testArray,"#"));
  
  zahl = 0;
  farbe = color(zahl,zahl,zahl);
  farben = new int[16][16];
  
  for(int hoehe = 0; hoehe < 16; hoehe++){
    for(int breite = 0; breite < 16; breite++){
      farben[breite][hoehe] = farbe;
      zahl += 1;
      farbe = color(zahl,zahl,zahl);
    }
  }
  // SETUP ENDE
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  //background(125);
  // DRAW START
  
  farbe = 0;
  noStroke();
  for(int hoehe = 0; hoehe < 800; hoehe+=50){
    for(int breite = 0; breite < 800; breite+=50){
      fill(farben[breite/50][hoehe/50]);
      square(breite,hoehe,50);
    }
  }
  
  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  //line(0, mouseY, width, mouseY);
  //line(mouseX, 0, mouseX, height);
  //println(mouseX + " | " + mouseY);
}
