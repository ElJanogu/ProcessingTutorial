/*
  
  Processing Tutorial
  Sketch Nr. 29
  Thema : Textdateien
  
  Sketch Inhalte :
  
  Pfade
  Dateien, die sich im selben Verzeichnis wie der Sketch befinden muessen nur mit dateinamen angegeben wertden bsp : test.txt""
  Dateien, die sich ein einem anderen Verzeichnis befinden werden mit dem ganzen Pfad angegeben  bsp : "A://OrdnerA/OrdnerB/TEST.txt" 
  
  BufferedReader - Ein Objekt das zum Lesen aus Textdateien verwendet wird, wird per createReader() initialisiert
    -> close(); - Schliesse den Reader
    -> read(); - Liest ein einziges Zeichen
    -> read(buffer,offset,laenge); - Schreibt eine Anzahl zu lesender Zeichen ein einen Abschnitt eines Arrays
      ~ buffer : char[] in das die Zeichen geschrieben werden
      ~ offset : Index ab dem in das Array geschrieben wird
      ~ laenge : Anzahl der Zeichen die in das Array geschrieben werden
    -> leadLine(); - Liest eine Zeile
  
  createReader(dateiname); - Erstellt einen BufferedReader
    ~ dateiname : Name der Datei, die als Input verwendert werden soll, wird sie nicht gefunden wird null zurueck gegeben
  
  loadStrings(dateiname); / loadStrings(reader); - Liest den Inhalt einer Datei und erstellt ein String[] aus den Zeilen
    ~ dateiname : Name der Datei, die als Input verwendert werden soll, wird sie nicht gefunden wird null zurueck gegeben
    ~ reader : ???
  
  PrintWrtier - Ein Objekt das zum Schreiben aus Textdateien verwendet wird, wird per (createWriter()) initialisiert
    -> flush(); - Leert den Stream
    -> close(); - Schliesst den Writer
    -> print(var); - Schreibt einen Wert
    -> println(); / println(var); - Schreibt einen Wert mit anschliessenden Zeilenumbruch bzw beendet die Zeile
      ~ var : boolean, char, char[], double, float, int, long, Object, String
  
  createWriter(dateiname): - Erstellt einen PrintWriter
    ~ dateiname : Name der Datei, die als Output verwendert werden soll, wird sie nicht gefunden wird eine neue Datei erstellt

  saveStrings(dateiName, data); - Schreibt ein Array von Strings in eine Datei
    ~ dateiname : Name der Datei, die als Output verwendert werden soll, wird sie nicht gefunden wird eine neue Datei erstellt
    ~ date : String[] das in die Datei geschrieben wird
  
*/
boolean booted;
BufferedReader br;
PrintWriter pw;

String input;

String data;
String alphabet = "abcdefghijklmnopqrstuvwxyzäöü,.-+*/ \n \t 0123456789?!=()&%$§";

void setup()
{
  // SETUP START
  data = "";
  booted = false;
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

void keyPressed()
{

  if(alphabet.indexOf(key) != -1)
  {
    data += key;
    if(!booted)
    {
      printAll(data);
      booted = true;
    } else 
    {
      printLast(data);
    }
    
  } else if(key == BACKSPACE)
  {
    data = data.substring(0, data.length() - 1);  
    printAfterDelete(data);
  } else if (key == 'A')
  {
    saveWithArray(data);
    //input = data;
    //thread("saveWithArray");
  } else if(key== 'S')
  {
    saveWithWriter(data);
  }else if(key == 'Y')
  {
    data = loadWithArray();

    //thread("loadWithArray_");

    printAll(data);
  } else if(key =='X')
  {
    data = loadWithReader();
    printAll(data);
  }else if (key == 'Q')
  {
    println();
    println("DATA GELOESCHT");
    data = "";
    printAll(data);
  } else if(key == 'M')
  {
    saveStrings("A://OrdnerA/OrdnerB/TEST.txt", new String[]{"TEST"});
  }
  
}

void printLast(String s)
{
  print(s.charAt(s.length()-1));
}

void printAfterDelete(String s)
{
  println("");
  println("..........");
  print(s);
}

void printAll(String s)
{
  println("");
  print(s);
}

String[] convertDataToArray(String s)
{
  return s.split("\n");
}

String convertArrayToData(String[] array)
{
  return join(array,"\n");
}

String convertArrayListToData(ArrayList<String> list)
{
  String[] array = new String[list.size()];
  
  for(int index = 0; index < list.size(); index++)
  {
    array[index] = list.get(index);
  }
  return convertArrayToData(array);
}

void saveWithArray(String s)
{
  String[] array = convertDataToArray(s);
  saveStrings("ArrayData.txt", array);
  println();
  println("TEXTDATEI 'ArrayData.txt' ERSTELLT");
}

void saveWithArray()
{
  String[] array = convertDataToArray(input);
  saveStrings("ArrayData.txt", array);
  println();
  println("TEXTDATEI 'ArrayData.txt' ERSTELLT");
}

void saveWithWriter(String s)
{
  pw = createWriter("RW.txt");
  String[] array = convertDataToArray(s);
  
  for(int index = 0; index < array.length; index++)
  {
    pw.println(array[index]);
  }
  pw.flush();
  pw.close();
  
  println();
  println("TEXTDATEI 'RW.txt' ERSTELLT");
  
}

String loadWithArray()
{
  String s = "";
  
  //br = createReader("ArrayData.txt");
  //String[] array = loadStrings(br);
  
  String[] array = loadStrings("ArrayData.txt");
  
  s = convertArrayToData(array);
  println("DATEN AUS 'ArrayData.txt' GELADEN");
  return s;
}

void loadWithArray_()
{
  data = "";
  
  String[] array = loadStrings("ArrayData.txt");
  
  data = convertArrayToData(array);
  println("DATEN AUS 'ArrayData.txt' GELADEN");
}

String loadWithReader()
{
  br = createReader("RW.txt");
  ArrayList<String> stringList = new ArrayList<>();
  String line = "";
  
  while(line != null)
  {
    try
    {
      line = br.readLine();
    } catch (IOException e)
    {
      e.printStackTrace();
      line = null;
    }
    
    if(line != null)
    {
      stringList.add(line);
    }
  }
  
  line = convertArrayListToData(stringList);
  
  try
  {
    br.close();  
  }catch (IOException e)
  {
  e.printStackTrace();
  }
  
  println("DATEN AUS 'RW.txt' GELADEN");
  return line;
}
