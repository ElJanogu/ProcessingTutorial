/*
  
  Processing Tutorial
  Sketch Nr. 21
  Thema : Listen
  
  Sketch Inhalte :
  
  ArrayList - Eine ArrayList speichert (aehnlich wie ein Array) eine variable Anzahl von Werten, Listen koennen dynamisch vergroessert und verkleinert werden
      ~ ist aber langsamer als ein Array
    ~ ArrayList<[DATENTYP]> [NAME] = new ArrayList<[DATENTYP]>();
    ~ ArrayList<[DATENTYP]> [NAME] = new ArrayList<[DATENTYP]>([#STARTGROESSE]);
    ~ Fuer Integers, Float und Strings gibt es spezielle Listen
      -> IntList : Liste fuer Integers
        > IntList() / IntList([#ITEMS])
      -> FloatList : Liste fuer Floats
        > FloatList() / FloatList([#ITEMS])
      -> StringList : Liste fuer Strings
       > StringList()
  
  IntList
  
  IntList.fromRange(#Limit) - Erstellt eine Liste von 0 - (#Limit - 1)
    ~ #LIMIT : Gibt das Limit (exklusive) als Zahl fuer die Liste an bzw die Anzahl der Elemente
  
  IntList.fromRange(#MIN,#MAX) - Erstellt eine Liste von #MIN bis #MAX
    ~ #MIN : Startwert der List (inklusive)
    ~ #MAX : Limit der Liste (exklusive)
  
  -------------------------
  
  Methoden :
  
  [ArrayList]
  add(#WERT); - Fuegt den Parameter an das Ende der Liste an
    ~ #WERT : Neues Element fuer die Liste

  [ArrayList]
  addAll(#WERTE); - Fuegt alle Elemente des Parameters an die Liste an
    ~ #WERTE : Neue Element fuer die List

  [IntList, FloatList, StringList]
  append(#WERTE); - Fuegt den Parameter an die Liste an (*) Kann auch einzelne Werte annehmen
    ~ #WERTE : Liste die an die Liste angefuegt wird

  [IntList, FloatList, StringList]
  push(#WERT); - Fuegt den Parameter an die Liste an
    ~ #WERT : Wert der an die Liste angefuegt wird
  
  [IntList, FloatList, StringList]
  appendUnique(#WERT); - Fuegt den Parameter der Liste hinzu wenn das Element sich noch nicht in der Liste befindet
    ~ #WERT : Element, das der Liste hinzugefuegt werden soll

  [IntList, FloatList, StringList]
  insert(#INDEX,#WERT); / insert(#INDEX,#WERTE); - Fuegt einen (oder auch mehrere) Wert(e) ab einem bestimmten Index in eine Liste ein
    ~ #INDEX
    ~ #Wert : Element, das eingefuegt wird
    ~ #WERTE : Elemente, die eingefuegt werden

  [ArrayList, IntList, FloatList, StringList]
  remove(#INDEX); - Loescht das Element mit dem gegebenen Index aus der Liste
    ~ #INDEX : Zu loeschender Index
  
  [ArrayList]
  removeAll(#WERTE); - Loescht alle Vorkommen der Elemente des Parameters aus der Liste
    ~ #WERTE : Liste zu loeschender Werte
  
  [IntList, FloatList, StringList]
  removeValue(#ELEMENT); - Loescht das Element (erstes Vorkommen) aus der Liste
    ~ #ELEMENT : Element, das geloescht wird
    
  [IntList, FloatList, StringList]
  removeValues(#ELEMENT); - Loescht das Element (alle Vorkommen) aus der Liste
    ~ #ELEMENT : Element, das geloescht wird

  [IntList, FloatList, StringList]
  pop(); - Gibt das letzte Element der Liste zurueck und loescht es aus der Liste
  
  [ArrayList]
  retainAll(#WERTE); - Loescht alle Elemente der Liste, die nicht im Parameter enthalten sind
    ~ #WERTE : Elemente die in der Liste bleiben sollen

  [ArrayList, IntList, FloatList, StringList]
  clear(); - loescht alle Elemente aus der Liste
  
  [ArrayList]
  isEmpty(); - Prueft ob die Liste keine Elemente besitzt, in diesem Fall wird true zurueck gegeben, ansonsten false
  
  [ArrayList, IntList, FloatList, StringList]
  size(); - Gibt die Anzahl der Elemente der Liste zurueck
  
  [IntList, FloatList, StringList]
  resize(#GROESSE); - Setzt die Groesse der Liste, Werden neue Indizes hinzugefuegt erhalten diese den Wert 0
    ~ #GROESSE : Anzahl der Indizes
  
  [ArrayList]
  contains(#WERT); - Prueft ob der Parameter ein Element der Liste ist, in diesem Fall wird true zurueck gegeben, ansonsten false
    ~ #WERT : Zu Pruefender Wert
  
  [IntList, FloatList, StringList]
  hasValue(#ELEMENT); - Prueft ob der Parameter ein Element der Liste ist, in diesem Fall wird true zurueck gegeben, ansonsten false
    ~ #ELEMENT : Zu Pruefender Wert
 
  [ArrayList]
  containsAll(#WERTE); - Prueft ob alle Elemente des Parameters teil der Liste sind, in diesem Fall wird true zurueck gegeben, ansonsten false
    ~ #WERTE : Liste zu pruefender Werte
  
  [ArrayList, IntList, FloatList, StringList]
  get(#POSITION); - Gibt das Element von der gewuenschten Position zurueck
    ~ #POSITION : Gegebene Position fuer Element-Suche
   
  [ArrayList]
  indexOf(#ELEMENT); - Gibt den Index des ersten Vorkommens des Element zurueck, ist das Element nicht Teil der Liste wird -1 zurueck gegeben
    ~ #ELEMENT : Elment dessen kleinster Index gesucht ist
 
  [IntList, FloatList, StringList]
  index(#ELEMENT); - Gibt den Index des ersten Vorkommens des Element zurueck, ist das Element nicht Teil der Liste wird -1 zurueck gegeben
    ~ #ELEMENT : Elment dessen kleinster Index gesucht ist
  
  [ArrayList]
  lastIndexOf(#ELEMNT); - Gibt den Index des letzten Vorkommens des Element zurueck, ist das Element nicht Teil der Liste wird -1 zurueck gegeben
    ~ #ELEMENT : Elment dessen hoechster Index gesucht ist
  
  [ArrayList, IntList, FloatList, StringList]
  equals(#OTHER); - Vergleicht den parameter mit der Liste, die jeweiligen Elemente muessen jeweils identisch sein, die Reihenfolge wird beachtet
    ~ #OTHER : Liste mit der Verglichen wird

  [ArrayList, IntList, FloatList, StringList]
  set(#INDEX, #WERT); - Setzt den Wert eines Elemente an einem bestimmten Index neu
    ~ #INDEX : Index des Elementes, dessen Wert neu gesetzt Werden soll
    ~ #WERT : Neuer Wert des Elementes
  
  [FloatList, StringList]
  replaceValue(#ALT,#NEU); - Ersetzt das erste Vorkommen eines Elementes mit dem alten Wert, wird an diesem Index der neue Wert eingefuegt
  
  [FloatList, StringList]
  replaceValues(#ALT,#NEU); - Ersetzt alle Vorkommen eines Elementes mit dem alten Wert, wird an diesem Index der neue Wert eingefuegt
  
  [IntList]
  increment(#INDEX); - Inkrementiert das Element an einem bestimmten Index
    ~ #INDEX : Index dessen Element inkrementiert wird  
  
  [IntList, FloatList]
  add(#INDEX,#WERT); - Erhoeht ein Element an einer bestimmten Stelle um einen bestimmten Wert
    ~ #INDEX : Index des Elements
    ~ #WERT : Wert der hinzugefuegt wird
  
  [IntList, FloatList]
  sub(#INDEX, #WERT); - Verringert ein Element an einer bestimmten Stelle um einen bestimmten Wert
    ~ #INDEX : Index des Elements
    ~ #WERT : Wert der abgezogen wird  
  
  [IntList, FloatList]
  mult(#INDEX,#WERT); - Multipliziert ein Element an einer bestimmten Stelle mit einen bestimmten Wert
    ~ #INDEX : Index des Elements
    ~ #WERT : Wert mit dem multipliziert wird   
  
  [IntList, FloatList]
  div(#INDEX,#WERT); - Teilt ein Element an einer bestimmten Stelle durch einen bestimmten Wert
    ~ #INDEX : Index des Elements
    ~ #WERT : Wert durch den geteilt wird
  
  [IntList, FloatList]
  getPercent(); - Erstellt eine FloatList, wobei jedes Element in den Prozentanteil der Summe aller Elemente umgerechnet wird
    ~ [1,2,3] -> [0.1666 (16.66%), 0.3333 (33.33%), 0.5 (50%)]
  
  [IntList, FloatList]
  max(); - Gibt das hoechste Element der Liste zurueck
  
  [IntList, FloatList]
  min(); - Gibt das kleinste Element der Liste zurueck
   
  [FloatList]
  random(); - Gibt ein zufaelliges Element aus der Liste zurueck   
  
  [IntList, FloatList, StringList]
  reverse(); - Invertiert die Reihenfolge der Elemente

  [IntList, FloatList, StringList]
  shuffle(); - Mischt die Elemente der Liste

  [IntList, FloatList, StringList]
  sort(); - Sortiert die Elemente der Liste vom niedrigsten bis zum hoechsten Wert

  [IntList, FloatList, StringList]
  sortReverse(); - Sortiert die Elemente der Liste vom hoechsten bis zum niedrigsten Wert
  
  [IntList, FloatList]
  sum(); - Addiert alle Elemente der Liste zu einem Integer / Float zusammen
  
  [IntList]
  sumLong(); - Addiert alle Elemente der Liste zu einem Long zusammen

  [FloatList]
  sumDouble(); - Addiert alle Elemente der Liste zu einem Double zusammen
    
  [StringList]
  lower(); - fuehrt the String Methode 'toLowerCase()' auf jedes Element der Liste aus
  
  [StringList]
  upper(); - fuehrt the String Methode 'toUppderCase()' auf jedes Element der Liste aus
  
  [ArrayList]
  subList(#START, #ENDE); - Erstelle eine Teil-Liste
    ~ #START : Start Index (Inklusive)
    ~ #ENDE :  End Index (Exklusive)
  
  [IntList, FloatList, StringList]
  getSubset(#START); / getSubset(#START,#ELEMENTE); - Erstellt eine Teil-Liste, wobei der Startindex, und optional die Anzahl der Elemente ,angegeben wird
    ~ #START : Index ab dem Elemente uebernommen werden
    ~ #ELEMENTE : Anzahl der Elemente die uebernommen werden
 
  [IntList, FloatList, StringList]
  copy(); - Erstelle eine Kopie der Liste

  [ArrayList, IntList, FloatList, StringList]
  toArray(); - Konvertiert die Liste zu einem Array
  
  [IntList, FloatList, StringList]
  array(); - Konvertiert die IntList / FloatList / StringList in ein int / float / String-Array
  
  [StringList]
  getUnique(); - Erstellt ein String[], von den Elementen die mehrfach vorkommen wird nur das erste uebernommen

  [IntList, FloatList, StringList]
  print(); - Schreibt die Elemente der Liste zeilenweise mit Index in die Konsole

  [ArrayList, IntList, FloatList, StringList]
  toString(); - Konvertiert die ArrayList zu einem String   

  [IntList, FloatList, StringList]
  join(#SEPARATOR); - Kombiniert die Liste in einen String, jedes Element wird durch den 'Separator' getrennt
    ~ #SEPARATOR : Separator, der die Elemente der Liste trennt

*/

ArrayList<Integer> arraylist1 = new ArrayList<Integer>();
ArrayList<Integer> arraylist2 = new ArrayList<Integer>();

IntList iList1 = new IntList();
IntList iList2 = new IntList();

FloatList fList = new FloatList();

StringList sList = new StringList();

void setup(){}

void draw(){}

void keyPressed(){
  if(key == 'a' || key == 'A'){
    println("ArrayList Beispiel : ");
  
    println("Liste1 : " + arraylist1);
    
    println(arraylist1.isEmpty());
    println(arraylist1.size());
    
    arraylist1.add(5);
    arraylist1.add(22);
    arraylist1.add(1345);
    
    arraylist2.add(64);
    arraylist2.add(900);
    arraylist2.add(22);
    arraylist2.add(37);
    
    arraylist1.addAll(arraylist2);
    
    arraylist1.add(752);
    
    println("Liste1 : " + arraylist1);
    println("Liste2 : " + arraylist2);
    
    println("Element 0 : " + arraylist1.get(0));
    println("Element 4 : " + arraylist1.get(4));
    
    println("1. Index '22' : " + arraylist1.indexOf(22));
    println("... Index '22' : " + arraylist1.lastIndexOf(22));
    
    println("400 in Liste1 : " + arraylist1.contains(400));   
    println("Liste2 in Liste1 : " + arraylist1.containsAll(arraylist2));
  
    println("Liste1 sub 3-6 : " + arraylist1.subList(3,6));
    
    print("Liste2 Array : ");
    println(arraylist2.toArray());
    println("Liste1 String : " + arraylist1.toString());
    
    arraylist1.set(4,35);
    println("List1 : " + arraylist1);
    
    arraylist1.retainAll(arraylist2);
    println("List1 : " + arraylist1);
    
    arraylist1.remove(2);
    println("List1 : " + arraylist1);
    
    arraylist2.clear();
    println("List2 : " + arraylist2);
    
    arraylist2.add(37);
    arraylist2.add(22);
    
    arraylist1.removeAll(arraylist2);
    println("List1 : " + arraylist1);
    
    arraylist2.clear();
    
    arraylist2.add(22);
    arraylist2.add(64);
    
    arraylist1.add(22);

    println("List1 : " + arraylist1);
    println("List2 : " + arraylist2);
    println("equals : " + arraylist1.equals(arraylist2));
    
  } else if(key == 'i' || key == 'I'){
    println("IntList Beispiel : ");
    
    /*
    remove(), clear(), size(), get(), equals(), set(), toArray() und toString() funktionieren wie bei ArrayList
    
    I : Allgemein
    */
    
    iList1.append(3);
    iList1.append(5);
    iList1.append(78);
    
    iList2.append(17);
    iList2.append(5);
    iList2.append(105);
    
    iList1.append(iList2);
    iList1.push(202);
    
    println("List1 : " + iList1);
    println("List2 : " + iList2);
    
    iList1.appendUnique(5);
    iList1.appendUnique(12);
    println("List1 : " + iList1);
     
    iList1.insert(6,iList2);
    iList1.insert(1,2000);
    println("List1 : " + iList1);
    
    iList1.removeValue(17);
    println("List1 : " + iList1);
    
    iList1.removeValues(5);
    println("List1 : " + iList1);
    
    iList2.pop();
    println("List2 : " + iList2);
    
    iList1.resize(7);
    iList2.resize(7);
    println("List1 : " + iList1);
    println("List2 : " + iList2);
    
    println("105 in List1 : " + iList1.hasValue(105));
    println("105 in List2 : " + iList2.hasValue(105));
    
    println("Pos. v. 4 in List1 : " +iList1.index(4));
    println("Pos. v. 78 in List1 : " +iList1.index(78));
    println("Pos. v. 105 in List1 : " +iList1.index(105));
    
    iList1.reverse();
    println("Reverse List1 : " + iList1);
    
    iList1.shuffle();
    println("Shuffle List1 : " + iList1);
    
    iList1.sort();
    println("Sort List1 : " + iList1);
    
    iList1.sortReverse();
    println("SortReverse List1 : " + iList1);
    
    println("List1 Subset (2) : " + iList1.getSubset(3));
    println("List1 Subset (4,2) : " + iList1.getSubset(4,2));
    
    iList2 = iList1.copy();
    println("List1 : " + iList1);
    println("List2 : " + iList2);
    
    int[] testArray = iList1.array();
    println("Test Array : ");
    println(testArray);
    
    println("List1 Print : ");
    iList1.print();
    
    /*
    Int- und FloatList Funktionen
    */
    
    // nur fuer IntList
    iList1.increment(3);
    println("List1 : " + iList1);
    println("List1 LongSum : " + iList1.sumLong());
    
    iList1.add(6,4);
    iList1.sub(4,20);
    iList1.mult(5,3);
    iList1.div(0,10);
    println("List1 : " + iList1);
    
    println("List1 Max : " + iList1.max());
    println("List2 Min : " + iList1.min());
    
    println("List1 Percent : " + iList1.getPercent());
    println("List1 Sum : " + iList1.sum());
    
    
  } else if(key == 'f' || key == 'F'){
    println("FloatList Beispiel : ");
    
    fList.append(7.5);
    fList.append(100.0);
    fList.append(33.75);
    fList.append(20.33);
    println("List : " + fList);
    
    fList.add(3,4.67);
    fList.sub(2,8.25);
    fList.mult(0,4);
    fList.div(1,2);
    println("List : " + fList);
    
    println("List Max : " + fList.max());
    println("List Min : " + fList.min());
    println("List Percent : " + fList.getPercent());
    println("List Random : " + fList.random());
    println("List SumDouble : " + fList.sumDouble());
    
  }else if(key == 's' || key == 'S'){
    println("StringList Beispiel : ");
    
    sList.append("Hello");
    sList.append("?");
    sList.append("!");
    sList.append("?");
    sList.append("Processing");
    sList.append("Listen");
    sList.append("?");
    sList.append("!");
    println("List : " + sList);
    
    // replaceValue und replaceValues sind auch in FloatList verfuegbar
    sList.replaceValue("?","World");
    println("List : " + sList);
    
    sList.replaceValues("?","404");
    println("List : " + sList);
    
    sList.lower();
    println("List lowerCase : " + sList);
    
    sList.upper();
    println("List upperCase : " + sList);
    
    print("List Unique Array : ");
    println(sList.getUnique());
    
  }
}
