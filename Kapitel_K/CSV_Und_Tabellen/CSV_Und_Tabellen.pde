/*
  
  Processing Tutorial
  Sketch Nr. 33
  Thema : CSV Dateien & Tabellen
  
  Sketch Inhalte :
  
  Table - Ein Objekt das mehrere Spalten und Zeilen von Daten speichern kann
    -> addColumn(); / addColumn(titel); / addColumn(titel,typ); - Fuegt eine Spalte hinzu
      ~ titel : Titel der Spalte (Standard : null)
      ~ typ : Type der Spalte, (Standard : String)
    -> removeColumn(name); / removeColumn(column); - Entfernt eine Spalte aus der Tabelle
      ~ name : Name der Spalte, die entfernt wird
      ~ column : Index der Spalte, die entfernt wird
    -> getColumnCount(); - Gibt die Anzahl der Spalten zurueck
    -> getRowCount(); - Gibt die Anzahl der Zeilen zurueck
    -> clearRows(); - loescht alle Zeilen aus der Tabelle
    -> addRow(); / addRow(quelle); - fuegt eine leere Zeile in die Tabelle ein oder kopiert eine existierende Zeile
      ~ quelle : Tabellenzeile die dupliziert wird (TableRow)
    -> removeRow(index); - entfernt eine zeile aus der Tabelle
      ~ index : Index der Zeile die entfernt wird
    -> getRow(index); - gibt eine Referenz auf eine TableRow zurueck
      ~ index : Index der Zeile die zurueck gegeben wird
    -> rows(); - Gibt alle Zeilen als Iterable zurueck
    -> getInt(zeile, spalte); / getInt(zeile,name); - Gibt einen Integer aus einer bestimmen Zelle der Tabelle zurueck
      ~ zeile : Index der Zeile
      ~ spalte : Index der Spalte
      ~ name : Name der Spalte
    -> setInt(zeile,spalte,wert); / setInt(zeile,name,wert); - Speichert einen Integer in einer bestimmten Zelle der Tabelle
      ~ zeile : Index der Zeile
      ~ spalte : Index der Spalte
      ~ name : Name der Spalte
      ~ wert : Zu setzender Wert
    -> getFloat(zeile, spalte); / getFloat(zeile,name); - Gibt einen Float aus einer bestimmen Zelle der Tabelle zurueck
      ~ zeile : Index der Zeile
      ~ spalte : Index der Spalte
      ~ name : Name der Spalte
    -> setFloat(zeile,spalte,wert); / setFloat(zeile,name,wert); - Speichert einen Float in einer bestimmten Zelle der Tabelle
      ~ zeile : Index der Zeile
      ~ spalte : Index der Spalte
      ~ name : Name der Spalte
      ~ wert : Zu setzender Wert
    -> getString(zeile, spalte); / getString(zeile,name); - Gibt einen String aus einer bestimmen Zelle der Tabelle zurueck
      ~ zeile : Index der Zeile
      ~ spalte : Index der Spalte
      ~ name : Name der Spalte
    -> setString(zeile,spalte,wert); / setString(zeile,name,wert); - Speichert einen String in einer bestimmten Zelle der Tabelle
      ~ zeile : Index der Zeile
      ~ spalte : Index der Spalte
      ~ name : Name der Spalte
      ~ wert : Zu setzender Wert
    -> getStringColumn(spalte); / getStringColumn(index); - Gibt alle Daten einer Zeile als String[] zurueck
      ~ spalte : Index der Spalte
      ~ index : Name der Spalte
    -> findRow(wert,spalte); / findRow(wert,name) - Gibt eine Referenz auf die erste Zeile die den gesuchten Wert in der gewuenschten Spalte besitzt
      ~ wert : Zu suchender Wert
      ~ spalte : Index der Ziel-Spalte
      ~ name : name der Ziel-Spalte
    -> findRows(wert,spalte); / findRows(wert,name) - Gibt eine Referenz (Iterator) auf die alle Zeilen die den gesuchten Wert in der gewuenschten Spalte besitzt
      ~ wert : Zu suchender Wert
      ~ spalte : Index der Ziel-Spalte
      ~ name : name der Ziel-Spalte
    -> removeTokens(tokens); / removeTokens(tokens,spalte); / removeTokens(tokens,name); - Entfernt alle angegebenen Zeichen ("Tokens") aus einer Spalte oder der ganzen Tabelle
      ~ tokens : Zeichen (String) die zu entfernen sind
      ~ spalte : Index der Spalte
      ~ name : Name der Spalte
    -> trim(); / trim(spalte); / trim(name); - Entfernt alle Vor- und Nachstehenden Leerzeichen von String-Werten aus einer Spalte oder der ganzen Tabelle
      ~ spalte : Index der Spalte
      ~ name : Name der Spalte
    -> sort(spalte); / sort(name); - Sortiert die Tabelle anhand der Werte aus einer Spalte
      ~ spalte : Index der Spalte
      ~ name : Name der Spalte
    
  TableRow - Ein Objekt, dass eine Zeile einer Tabelle repraesentiert
    -> getColumnCount(); - Gibt die Anzahl der Spalten der Tabellen-Zeile zurueck
    -> getColumnTitle(spalte); - Gibt den Namen einer bestimmten Spalte zurueck
      ~ spalte : Index der Spalte
    -> getInt(spalte); / getInt(name); - Gibt einen Integer aus einer bestimmen Spalte der Tabellen-Zeile zurueck
      ~ spalte : Index der Spalte
      ~ name : Name der Spalte
    -> setInt(spalte,wert); / setInt(name,wert); - Speichert einen Integer in einer bestimmten Spalte einer Tabellen-Zeile
      ~ spalte : Index der Spalte
      ~ name : Name der Spalte
      ~ wert : Zu setzender Wert
    -> getFloat(spalte); / getFloat(name); - Gibt einen Float aus einer bestimmen Spalte der Tabellen-Zeile zurueck
      ~ spalte : Index der Spalte
      ~ name : Name der Spalte
    -> setFloat(spalte,wert); / setFloat(name,wert); - Speichert einen Float in einer bestimmten Spalte einer Tabellen-Zeile
      ~ spalte : Index der Spalte
      ~ name : Name der Spalte
      ~ wert : Zu setzender Wert
    -> getString(spalte); / getString(name); - Gibt einen String aus einer bestimmen Spalte der Tabellen-Zeile zurueck
      ~ spalte : Index der Spalte
      ~ name : Name der Spalte
    -> setString(spalte,wert); / setString(name,wert); - Speichert einen String in einer bestimmten Spalte einer Tabellen-Zeile
      ~ spalte : Index der Spalte
      ~ name : Name der Spalte
      ~ wert : Zu setzender Wert
    
  saveTable(tabelle,dateiname); / saveTable(tabelle,dateiname,optionen); - Schreibt den Inhalt der Tabelle in eine Datei
    ~ tabelle : Tabellen-Objekt das gespeichert wird
    ~ dateiname : Name / Pfad der Datei 
    ~ optionen : Entweder "tsv", "csv", "bin", "html"
  
  loadTable(dateiname); / loadTable(dateiname,optionen); - Laedt eine Datei als Tabelle, verwende "header" in optionen wenn die Tabelle eine header-zeile besitzt
    ~ dateiname : Name / Pfad der Datei
    ~ optionen : kann "header", "tsv", "csv", "bin" enthalten, bsp : "header, csv"
 
*/

Table myTable;
String[] names = new String[]{"John","Tom","Simon","Jenny","Rick","Anna","Stephen","Otto","Emilia","Ben"};
String tableTyp;

void setup()
{
  // SETUP START
  tableTyp = "";
  
  myTable = new Table();
  myTable.addColumn("id");
  myTable.addColumn("Name");
  myTable.addColumn("UNUSED");
  myTable.addColumn("Kontostand");
  
  println(myTable.getColumnCount());
  myTable.removeColumn(2);
  
  addRandomRows(25);
  
  print("Random Row : ");
  printRow(myTable.getRow((int)random(myTable.getRowCount())));
  
  println("Removed Random Row");
  myTable.removeRow((int)random(myTable.getRowCount()));
  
  // myTable.clearRows();
  
  println("Row Count : " + myTable.getRowCount());
  printTable();
  printIDs();
  
  print("ID 5 Row : ");
  printRow(myTable.findRow("5","id"));
  printTable("Name", "Otto5");
  
  println();
  
  myTable.sort(0);
  printTable();
  
  println();
  
  myTable.sort(1);
  printTable();
  
  println();
  
  myTable.sort(2);
  printTable();
  
  // SETUP ENDE
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  background(125);
  // DRAW START

  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  line(0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);
  //println(mouseX + " | " + mouseY);
}

void keyPressed()
{
  if(key == 'q')
  {
    tableTyp = "csv";
    thread("loadMyTables");
  } else if(key == 'a')
  {
    tableTyp = "tsv";
    thread("loadMyTables");
  } else if(key == 'y')
  {
    tableTyp = "bin";
    thread("loadMyTables");    
  } else if(key == '0')
  {
    printTable();
  } else if(key == '1')
  {
    myTable.sort(0);
    thread("saveMyTables");
  }
}

void addRandomRow()
{
  TableRow randomRow = myTable.addRow();
  
  int nameIndex = (int)random(names.length);
  float randKonto = random(1000000.00);
  
  randomRow.setInt(randomRow.getColumnTitle(0),myTable.lastRowIndex());
  randomRow.setString(randomRow.getColumnTitle(1),names[nameIndex]+String.valueOf((int)random(10)));
  randomRow.setFloat(randomRow.getColumnTitle(2),randKonto);
  println("New Row : ");
  printRow(randomRow);
}

void addRandomRows(int count)
{
  for(int index = 0; index < count; index++)
  {
    addRandomRow();
  }
}

void printTable()
{
  for(int index = 0; index < myTable.getRowCount(); index++)
    {
      printRow(myTable.getRow(index));
    }
}

void printTable(String coloumn, String content)
{
  for(TableRow tr : myTable.findRows(content,coloumn))
    {
      printRow(tr);
    }
}

void printRow(TableRow tr)
{
  println(tr.getInt("id") + " " + tr.getString("Name") + " " + tr.getFloat("Kontostand"));
}

void printIDs()
{
  String[] array = myTable.getStringColumn("id");
  printArray(array);
}

void saveMyTables()
{
  saveTable(myTable,"myTable.csv","csv");
  saveTable(myTable,"myTable.tsv","tsv");
  saveTable(myTable,"myTable.bin","bin");
  saveTable(myTable,"myTable.html","html");
}

void loadMyTables()
{
    myTable.clearRows();
    myTable = loadTable("myTable." + tableTyp,"header, " + tableTyp);
}
