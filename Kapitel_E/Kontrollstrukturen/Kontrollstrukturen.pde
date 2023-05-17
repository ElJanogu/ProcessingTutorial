/*
  
  Processing Tutorial
  Sketch Nr. 11
  Thema : Kontrollstrukturen
  
  Sketch Inhalte :
  
  if(x){a}else{b} - if-(else)-Abfrage; Prueft ob die Bedingung(en) zu true ausgewertet wird/werden,
      in diesem Fall wird der Codeblock ausgefuehrt, ansonsten wird der Codeblock von else ausgefuehrt
    ~ x : if-Begingung(en)
    ~ a : if-Codeblock
    ~ b : else-CodeBlock
    ~ else ist Optional
  
  if(x){a}else if(y){b}else{c} - if-else if-(else)-Abfrage : Prueft ob die if-Bedingung(en) zu true ausgewertet wird/werden,
      in diesem Fall wird der if-Codeblock ausgefuehrt, ansonsten werden die naechsten Bedingung(en) (else-if) ausgewertet usw.
      Werden keine der Bedingungen zu true ausgewertet wird der Codeblock von else ausgefuehrt
    ~ x : if-Begingung(en)
    ~ y : if-else-Begingung(en)
    ~ a : if-Codeblock
    ~ b : if-else-Codeblock
    ~ c : else-CodeBlock
    ~ es koennen beliebtig viele if else aneinander gehaengt werden
    ~ else ist Optional
  
  x?a:b - Ternaere Operator; Prueft ob die Bedingung(en) zu true ausgewertet wird/werden,
      in diesem Fall wird a zurueck gegeben, ansonsten b
    ~ x : Bedingung(en)
    ~ a : Rueckgabewert 'true'
    ~ b : Rueckgabewert 'false'
  
  switch(x) {case a: ... case b: ... default: ...} - Switch-Case, Alternative zu if else,
      Suchen einen zum Parameter passenden Case, Wird kein Passender Case gefunden, wird der default Case ausgefuehrt wenn vorhanden
    ~ x : switch variable
    ~ case a : case wird ausgefuehrt wenn x = a
    ~ case b : case wird ausgefuehrt wenn x = b
    ~ default : wird ausgefuehrt wenn kein case gefunden wird
  
  while(x){a} - While-Schleife; Prueft zunaechst ob die Bedingung(en) der Schleife true ergeben,
      in diesem Fabb wird der While-Codeblock ausgefuert, anschliessend wird/werden die Bedingung(en) erneut geprueft
    ~ x : While-Bedingung(en)
    ~ a : While-Codeblock
  
  do{a}while(x); - Do-While-Schleife; Fuehrt erst den While-Codeblock aus, 
      Prueft dann ob die Bedingung(en) der Schleife true ergeben, in diesem Fall wird der While-Codeblock wieder ausgefuehrt usw.
    ~ x : While-Bedingung(en)
    ~ a : While-Codeblock
  
  for(x*,y,z**){a}; - For-Schleife / Zaehlende Schleife; Die Schleife Definiert eine Variable, fuehrt den Codeblock aus solange
      die Bedingung(en) zu true ausgewertert wird / werden, Nach jeder Codeblock Ausfuehrung wird der Wert der Variable veraendert
    ~ x : Deklarierung und Initialisierung der Schleifenvariable, dies kann alternativ auch ausserhalb / vor dem for() gemacht werden
    ~ y : For-Bedingung(en)
    ~ z : Variablen Veraenderung, dies kann alternativ auch im Codeblock gemacht werden
    ~ a : For-Codeblock
  
  break; - Befehl der Erlaubt Schleifen (while, do-while und for) fruehzeitig zu verlassen und in switch-case garantiert, dass nicht mehrere cases behandelt werden
  
  Vergleichsoperatoren :
    ~ == (ist gleich) : Prueft bei a == b ob a und b den selben Wert beinhalten
    ~ != (ist nicht gleich) : Prueft bei a != b ob a und b unterschiedliche Werte beinhalten
    ~ >= (ist groesser gleich) : Prueft bei a >= b ob der Wert von a groesser als oder gleich b ist
    ~ <= (ist kleiner gleich) : Prueft bei a <= b ob der Wert von a kleiner als oder gleich b ist
    ~ > (ist groesser) : Prueft bei a > b ob der Wert von a groesser ist als der von b
    ~ < (ist kleiner) : Prueft bei a < b ob der Wert von a kleiner ist als der von b
    
  logische Operatoren :
    ~ && (logisches Und) : a && b wird zu true ausgewertet, wenn a und b zu true ausgewertet werden, wird a zu false ausgewertet wird b ueberprungen
    ~ & (logisches Und) : a && b wird zu true ausgewertet, wenn a und b zu true ausgewertet werden, b wird auf jeden Fall ausgewertet
    ~ || (logisches Oder) : a || b wird zu true ausgewertet, wenn a oder b oder beide zu true ausgewertet werden, wenn a true ist wird b ueberprungen
    ~ | (logisches Oder) : a || b wird zu true ausgewertet, wenn a oder b oder beide zu true ausgewertet werden, b wird auf jeden Fall ausgewerte
    ~ ^ (eklusiv Oder) : a ^ b wird zu true ausgewertet, wenn nur a oder nur b zu true ausgewertet werden
    ~ ! (Negierung) : !a wird zu true ausgewertet, wenn a zu false ausgewertet wird
  
*/

int x;
color c1, c2, c3;
String richtung;

void setup()
{
  // SETUP START
  size(1000,600);
  x = 0;
  c1 = #FFFFFF;
  c2 = #7D7D7D;
  c3 = #000000;
  richtung = "rechts";
  
  int nummer = 22000;
  
  // ***** if Abfrage *****
  if(nummer > 64000) {
    println("groesser 64.000");
  }
  
  if(nummer < 32000) {
    println("kleiner 32.000");
  } else {
    println("groesser 32.000");
  }
  
  if(nummer < 16000) {
    println("kleiner 16.000");
  } else if(nummer >= 16000 && nummer < 20000) {
    println("zwischen 16.000 und 20.000");
  } else if(nummer >= 20000 && nummer < 50000){
    println("zwischen 20.000 und 50.000");
  } else {
    if(nummer == 60000 || nummer == 100000){
      println("ist 60.000 oder 100.000");
    } else {
      println("groesser als 50.000 aber weder 60.000 und 100.000");
    }
  }
  
  if ((nummer%17==0)^(nummer%312==0)){
    println("ist durch 17 ODER durch 312 teilbar aber nicht durch beide");
  }
  
  println("");
  
  float nummer2 = 22.50;
  
  //  ***** Ternaere Operator *****
  
  println((nummer2 % 2 == 0) ? "ist gerade" : "ist ungerade");
  
  println("");
  
  char buchstabe = 'U';
  String wort = "";
  
  // ***** Switch-Case *****
  
  switch(buchstabe){
  
    case 'A':
      wort += buchstabe;
      println("Es ist ein A");
      break;
      
    case 'E':
      wort += buchstabe;
      println("Es ist ein E");
      break;
      
    case 'I':
      wort += buchstabe;
      println("Es ist ein I");
      break;
      
    case 'O':
      wort += buchstabe;
      println("Es ist ein O");
      break;
      
    case 'U':
      wort += buchstabe;
      println("Es ist ein U");
      
    default:
      println("Es ist kein Vokal");
    
  }
  
  println(wort);
  
  println("");
  
  // ***** While Schleife *****
  
  String whileString = "Hello";
  
  while(whileString.length() < 10){
    whileString += ".";
  }
  
  println(whileString);
  
  float doWhileFloat = 13.00;
  
  do {
    doWhileFloat += 1.50;
    
    if(doWhileFloat > 150.00){
      break;
    }
    
  }while(!(doWhileFloat % 25.125 == 0));
  
  println(doWhileFloat);
  
  println();
  
  // ***** For Schleife *****
  
  String alphabet = "";

  int zaehler = 65;
  
  for(; zaehler < 100;){
    
    char buchstabe2 = (char)zaehler;
    
    alphabet += buchstabe2;
    
    if(buchstabe2 == 'Z'){
      break;
    }
    
    zaehler++;
  }
  
  println(alphabet);
  // SETUP ENDE
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  background(125);
  // DRAW START
  fill(c1);
  circle(x,100,100);
  
  fill(c2);
  circle(x,300,100);
  
  fill(c3);
  circle(x,500,100);
  
  if(richtung == "rechts") {
    if(x == 333){
        c1 = #FF0000;
        c2 = #00FF00;
        c3 = #0000FF;
    }else if(x == 666){
        c1 = #FF007D;
        c2 = #7DFF00;
        c3 = #007DFF;
    }
    x++;
  } else {
    if(x == 333){
        c1 = #FFFFFF;
        c2 = #7D7D7D;
        c3 = #000000;
    }else if(x == 666){
        c1 = #FF0000;
        c2 = #00FF00;
        c3 = #0000FF;
    }
    x--;
  }
  
  if(x >= width) {
    richtung = "links";
  } else if(x <= 0) {
    richtung = "rechts";
  }
  
  line(333,0,333,height);
  line(666,0,666,height);
  
  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  line(0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);
  //println(mouseX + " | " + mouseY); // Auskommentiert wegen setup prints
}
