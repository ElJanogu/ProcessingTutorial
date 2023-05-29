/*
  
  Processing Tutorial
  Sketch Nr. 22
  Thema : Maps und Dictionarys
  
  Sketch Inhalte :
  
  HashMap<KEY,VALUE> : eine HashMap speichert Schluessel-Werte Paare. Jeder Schluessel ist einmalig. auf die Werte kann ueber den Schluessel zugegriffen werden
  
  IntDict : Eine Map mit einen String als Schluessel und einen Integer als Wert. Jeder Schluessel ist einmalig. auf Werte kann ueber Schluessel zugegriffen werden
  
  FloatDict : Eine Map mit einen String als Schluessel und einen Float als Wert. Jeder Schluessel ist einmalig. auf Werte kann ueber Schluessel zugegriffen werden
  
  StringDict : Eine Map mit einen String als Schluessel und einen String als Wert Jeder Schluessel ist einmalig. auf Werte kann ueber Schluessel zugegriffen werden
  
  Methoden : 
  
  [HashMap]
  put(KEY,VALUE); - Fuegt ein neues Werte-Paar in die Map ein, ist der Schluessel bereits in der Map vorhanden, wird der Wert ueberschrieben
    ~ KEY : Schluessel der Werte-Paares
    ~ VALUE : Wert des Werte-Paares

  [IntDict, FloatDict, StringDict]
  set(KEY,VALUE); - Fuegt ein neues Werte-Paar in die Map ein, ist der Schluessel bereits in der Map vorhanden, wird der Wert ueberschrieben
    ~ KEY : Schluessel der Werte-Paares
    ~ VALUE : Wert des Werte-Paares 
  
  [HashMap]
  putAll(MAP); - Fuegt alle Werte-Paare des Parameters in die Map ein, ist der Schluessel bereits in der Map vorhanden, wird der Wert ueberschrieben
    ~ Map : HashMap dessen Werte-Paare in die Map uebernommen werden sollen
  
  [HashMap]
  putIfAbsent(KEY,VALUE); - Fuegt ein neues Schluessel-Werte Paar in die Map ein wenn der Schluessel nicht in der Map enthalten ist
    ~ KEY : Schluessel der Werte-Paares
    ~ VALUE : Wert des Werte-Paares
   
  [HashMap, IntDict, FloatDict, StringDict]
  remove(KEY); / remove(KEY,VALUE) - Loescht ein Schluessel-Werte Paar aus der Map
    ~ KEY : Schluessel der mitsamt dessen Werte geloescht werden soll
    ~ VALUE : (Alternativ) Wert fuer Version, bei der das Werte-Paar nur geloescht wird wenn KEY UND VALUE gemeinsam vorhanden sind
  
  [HashMap]
  replace(KEY,VALUE); - Ersetzt den Wert eines bestimmten Werte-Paares (wie bei put, wenn der key bereits vorhanden ist)
    ~ KEY : Schluessel, dessen Wert veraendert werden soll, ist der Schluessel nicht vorhanden passiert nichts
    ~ VALUE : neuer Wert des Werte-Paares
  
  [HashMap]
  get(KEY); - Gibt den Value zum Parameter zurueck, ist der Schluessel nicht Teil der Map wird null zurueck gegeben
    ~ KEY : Schluessel, dessen Wert zurueckgegeben Werden soll
  
  [HashMap]
  getOrDefault(KEY,DEFAULT); - Gibt den Value zum Parameter zurueck, ist der Schluessel nicht Teil der Map wird 'DEFAULT' zurueck gegeben
    ~ KEY : Schluessel, dessen Wert zurueckgegeben Werden soll
    ~ DEFAULT : Alternativ-Wert falls der Schluessel nicht gefunden wird

  [IntDict, FloatDict, StringDict]
  get(KEY,VALUE); / get(KEY); - Gibt den Wert zum Schluessel zurueck, ist der Schluessel nicht Teil der Map wird 'DEFAULT' zurueck gegeben (oder null)
    ~ KEY : Schluessel, dessen Wert zurueckgegeben Werden soll
    ~ VALUE : Alternativ-Wert falls der Schluessel nicht gefunden wird

  [HashMap]
  containsKey(KEY); - Prueft ob der KEY ein Schluessel der Map ist, in diesem Fall wird true zurueck gegeben, ansonsten false
    ~ KEY : Ist der Schluessel auf den geprueft wird
  
  [IntDict, FloatDict, StringDict]
  hasKey(KEY); - Prueft ob der KEY ein Schluessel der Map ist, in diesem Fall wird true zurueck gegeben, ansonsten false
    ~ KEY : Ist der Schluessel auf den geprueft wird
  
  [HashMap]
  containsValue(VALUE); - Prueft ob der VALUE ein Wert der Map ist, in diesem Fall wird true zurueck gegeben, ansonsten false
    ~ VALUE : Ist der Wert auf den geprueft wird  

  [HashMap]
  equals(OTHER); - Prueft ob beide Maps identisch sind
    ~ OTHER : andere HashMap zum vergleichen  
  
  [IntDict, FloatDict, StringDict]  
  copy(); - Erstellt eine Kopie des IntDict / FloatDict / StringDict
  
  [HashMap, IntDict, FloatDict, StringDict]
  clear(); - Loescht alle Schluellse-Werte Paare aus der Map
  
  [HashMap]
  isEmpty(); - Prueft ob die Map leer ist (keine Eintraege), in diesem Fall wird true zurueck gegeben, ansonsten false
  
  [HashMap, IntDict, FloatDict, StringDict]
  size(); - Gibe die Anzahl der Werte-Paare zurueck

  [IntDict, FloatDict, StringDict]
  resize(SIZE); - Verkleinert die Map auf die angegebene Groesse
    ~ SIZE : Neue Groesse der Map

  [IntDict]
  increment(KEY); - Inkrementiert den Wert eines Schluessels um 1
    ~ KEY : Schluessel dessen Wert erhoeht wird

  [IntDict, FloatDict]
  add(KEY,VALUE); - Addiert den Wert eines Schluessels mit einem bestimmen Wert
    ~ KEY : Schluessel dessen Wert addiert wird
    ~ VALUE : Wert, mit dem addiert wird
  
  [IntDict, FloatDict]
  sub(KEY,VALUE); - Subtrahiert einen bestimmten Wert vom Wert des Schluessels
    ~ KEY : Schluessel dessen von Wert subtrahiert wird
    ~ VALUE : Wert, mit dem subtrahiert wird
  
  [IntDict, FloatDict]
  mult(KEY,VALUE); - Multipliziert den Wert eines Schluessels mit einem bestimmen Wert
    ~ KEY : Schluessel dessen Wert multipliziert wird wird
    ~ VALUE : Wert, mit dem multiplitiert wird
  
  [IntDict, FloatDict]
  div(KEY,VALUE); - Dividiert den Wert eines Schluessels durch einem bestimmen Wert
    ~ KEY : Schluessel dessen Wert dividiert wird
    ~ VALUE : Wert, mit dem dividiert wird

  [IntDict, FloatDict]
  getPercent(); - Erstellt einen FliatDict, wobei der Wert jedes Werte-Paares in den Prozentanteil der Summe aller Elemente umgerechnet wird
    ~ [<"A",1>, <"B",2>, <"C",3>] -> [<"A",0.16 (16%)>, <"B",0.33 (33%)>, <"C",0.5 (50%)>]

  [IntDict, FloatDict]
  sum(); - Gibt die Summe aller Werte zurueck
  
  [IntDict]
  sumLong(); - Gibt die Summe aller Werte (als Long) zurueck
  
  [FloatDict]
  sumDouble(); - Gibt die Summe aller Werte (als Double) zurueck

  [IntDict, FloatDict, StringDict]
  sortKeys(); - Sortiert die Schluessel der Map nach der alphabetischen Reihenfolge (A -> Z)
  
  [IntDict, FloatDict, StringDict]
  sortKeysReverse(); - Sortiert die Schluessel der Map entegegen der alphabetischen Reihenfolge (Z -> A)
  
  [IntDict, FloatDict, StringDict]
  sortValues(); - Sortiert die Werte der Map nach der hoehe der Werte (- ... -> + ...) / alphabetischen Reihenfolge (A -> Z)
  
  [IntDict, FloatDict, StringDict]
  sortValuesReverse(); - Sortiert die Werte der Map nach der hoehe der Werte (+ ... -> - ...) / entegegen der alphabetischen Reihenfolge (Z -> A)

  [IntDict, FloatDict, StringDict]
  index(KEY); - Gibt den Index des Werte-Paares zurueck (beginnend ab 0), ist der Schluessel nicht Teil der Map wird -1 zurueck gegeben
    ~ KEY : Schluessel dessen Index gefunden werden soll

  [IntDict, FloatDict, StringDict]
  key(INDEX); - Gibt den Key von einem bestimmten Index zurueck
    ~ INDEX : Index dessen Schluessel zurueck gegeben wird

  [IntDict, FloatDict, StringDict]
  value(INDEX); - Gibt den Wert von einem bestimmten Index zurueck
    ~ INDEX : Index dessen Wert zurueck gegeben wird

  [IntDict, FloatDict]
  maxIndex(); - Gibt den Index des Werte-Paares mit dem hoechsten Wert zurueck
  
  [IntDict, FloatDict]
  maxKey(); - Gibt den Schluessel des Werte-Paares mit dem hoechsten Wert zurueck

  [IntDict, FloatDict]
  maxValue(); - Gibt den Wert des Werte-Paares mit dem hoechsten Wert zurueck

  [IntDict, FloatDict]
  minIndex(); - Gibt den Index des Werte-Paares mit dem geringsten Wert zurueck
  
  [IntDict, FloatDict]
  minKey(); - Gibt den Schluessel des Werte-Paares mit dem geringsten Wert zurueck
  
  [IntDict, FloatDict]
  minValue(); - Gibt den Wert des Werte-Paares mit dem geringsten Wert zurueck

  [IntDict, FloatDict, StringDict]
  removeIndex(INDEX); - Entfernt das Werte-Paar an einem bestimmten Index
    ~ INDEX : Index dessen Werte-Paar entfernt wird

  [IntDict, FloatDict, StringDict
  swap(INDEX1,INDEX2); - Vertauscht die Eintraege der beiden Indizes
    ~ INDEX1 : Erstes Werte-Paar zum tauschen
    ~ INDEX2 : Zweites Werte-Paar zum tauschen
  
  [IntDict, FloatDict, StringDict]
  print(); - Schreibt die Werte-Paare der Map Zeilenweise in die Konsole
  
  [IntDict, FloatDict, StringDict]
  keyArray(); - Erstellt ein String[], das alle Schluessel beinhaltet 
  
  [IntDict, FloatDict, StringDict]
  valueArray(); - Erstellt ein int[] / float[] / String[], das alle Werte beinhaltet
   
  [HashMap, IntDict, FloatDict, StringDict]
  toString(); - Konvertiert die Map zu einem String
  
*/

HashMap<Integer,String> map1;
HashMap<Integer,String> map2;

IntDict id1;
IntDict id2;

FloatDict fd;

StringDict sd;

void setup()
{
  // SETUP START
  map1 = new HashMap<Integer,String>();
  map2 = new HashMap<Integer,String>();

  id1 = new IntDict();
  id2 = new IntDict();
  
  fd = new FloatDict();
  
  sd = new StringDict();
  // SETUP ENDE
}

void draw(){}

void keyPressed(){
  
  if(key == 'h' || key == 'H'){
    // ***** HashMap *****
    
    map1.put(15,"Hello");
    map1.put(27,"World");
    map1.put(3,"Processing");
    map1.put(90,"Maps & Dictionariess");
    map1.put(6,"ERROR 404");
    
    map2.putAll(map1);
    map2.put(67,"HashMap<>");
    map2.put(43,"Integer-String");
    
    map1.put(21,"Sketch 15");
    
    println("Map1 : " + map1);
    println("Map2 : " + map2);
    
    map1.putIfAbsent(6,"...");
    map1.putIfAbsent(7,"...");
    map1.put(3,"PROCESSING");
    println("Map1 : " + map1);
    
    map1.remove(6);
    map1.remove(27,"Earth");
    println("Map1 : " + map1);

    map2.replace(43,"Int.-Str.");
    println("Map2 : " + map2);
    
    println("Map2 get(2) : " + map2.get(2));
    println("Map2 get(3) : " + map2.get(3));
    
    println("Map2 getOD(42) : " + map2.getOrDefault(42,"NONE"));
    println("Map2 getOD(43) : " + map2.getOrDefault(43,"NONE"));
    
    println("Map1 key(90) : " + map1.containsKey(90));
    println("Map1 value(NICE) : " + map1.containsValue("NICE"));
    
    println("Map1 empty 1 : " + map1.isEmpty());
    println("Map1 size 1 : " + map1.size());
    
    map1.clear();
    
    println("Map1 empty 2 : " + map1.isEmpty());
    println("Map1 size 2 : " + map1.size());
    
    map1.putAll(map2);
    
    println("Map1 : " + map1);
    map1.remove(3);
    map1.put(3,"Processing");
    println("Map1 : " +map1);
    println("Map2 : " +map2);
    
    println(map1.equals(map2));
    
    println(map1.toString());
    
  } else if(key == 'i' || key == 'I'){
    // ***** IntDict *****
    
    id1.set("A1",25);
    id1.set("A2",125); 
    id1.set("A3",55); 
    id1.set("A4",10); 
    id1.set("A5",125);
    id1.set("A6",200); 
    
    println("IntDict1 : " + id1);
    
    id2 = id1.copy();
    println("IntDict2 : " + id2);
    
    println("IntDict1 get(A7) : " + id1.get("A7",-1));
    println("IntDict1 get(A2) : " + id1.get("A2",-1));
    
    println("IntDict1 hasKey(A7) : " + id1.hasKey("A7"));
    println("IntDict1 hasKey(A2) : " + id1.hasKey("A2"));
    
    id1.remove("A4");
    println("IntDict1 : " + id1);
    
    id1.resize(4);
    println("IntDict1 : " + id1);
    
    println("IntDict2 (size) : " + id2.size());
    id2.clear();
    println("IntDict2 (size) : " + id2.size());
    
    println("IntDict1 (string) : " + id1.toString());
       
    id1.add("A3",15);
    id1.sub("A2",100);
    id1.mult("A1",4);
    id1.div("A5",25);
    println("IntDict1 : " + id1);
    
    println("IntDict1 getPercent : " + id1.getPercent());
    
    println("IntDict1 (min) index, key und value : " + id1.minIndex() + " | " + id1.minKey() + " | " + id1.minValue());
    println("IntDict1 (max) index, key und value : " + id1.maxIndex() + " | " + id1.maxKey() + " | " + id1.maxValue());
    
    println("IntDict1 (sum) : " + id1.sum());
    println("IntDict1 (sumLing) : " + id1.sumLong());
    
    id1.increment("A1");
    println("IntDict1 : " + id1);
    
  } else if(key == 'f' || key == 'F'){
    // ***** FloatDict *****
    
    fd.set("B1",25.125);
    fd.set("B2",200.75);
    fd.set("B3",0.5);
    fd.set("B4",50.33);
    fd.set("B5",-24.66);
    
    println("FloatDict : " + fd);
    
    println("Index (B7) : " + fd.index("B7"));
    println("Index (B4) : " + fd.index("B4"));
    
    println("Key (2) : " + fd.key(2));
    println("Value (1) : " + fd.value(1));
    
    fd.removeIndex(4);
    println("FloatDict : " + fd);
    
    fd.swap(2,0);
    println("FloatDict : " + fd);
    
    fd.add("B1",33.66);
    fd.sub("B4",15.0);
    fd.mult("B3",10.0);
    fd.div("B2",1.5);
    println("FloatDict : " + fd);
    
    println("FloatDict (getPercent) : " + fd.getPercent());
    
    println("FloatDict (min) index, key und value : " + fd.minIndex() + " | " + fd.minKey() + " | " + fd.minValue());
    println("FloatDict (max) index, key und value : " + fd.maxIndex() + " | " + fd.maxKey() + " | " + fd.maxValue());
    
    println("FloatDict (sum) : " + fd.sum());
    println("FloatDict (sumDouble) : " + fd.sumDouble());
    
  } else if(key == 's' || key == 'S'){
    // ***** StringDict *****
    
    sd.set("B","2");
    sd.set("3","A");
    sd.set("1","B");
    sd.set("A","1");
    sd.set("C","3");
    sd.set("2","C");
    
    println("StringDict : " + sd);
    sd.sortKeys();
    println("StringDict : " + sd);
    sd.sortKeysReverse();
    println("StringDict : " + sd);
    sd.sortValues();
    println("StringDict : " + sd);
    sd.sortValuesReverse();
    println("StringDict : " + sd);
    
    println();
    sd.print();
    
    String[] array = sd.keyArray();
    print(array);
    println();
    array = sd.valueArray();
    print(array);
  }
  
}
