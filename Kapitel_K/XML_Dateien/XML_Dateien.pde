/*
  
  Processing Tutorial
  Sketch Nr. 35
  Thema : XML Dateien
  
  Sketch Inhalte :
  
  XML - XML repraesentiert ein XML Objekt, in der Lage XML-Code zu analysieren
    - *parse(str); - Konvertiert einen String zu einem XML Objekt
      ~ str : Zu konvertierender String
    - getParent(); - Gibt eine Kopie des uebergeordneten Elements des Elements als XML-Objekt zurueck
    - getName(); - Gibt den Namen des Elements als String zurueck
    - setName(name); - Setzt den Namen des Elements neu
      ~ name : Neuer Name des Elements
    - getChildCount(); - Gibt die Anzahl der Kind-Elemente zurueck
    - hasChildren(); - Prueft ob das Element Kind-Elemente besitzt, in diesem Fall wird true zurueck gegeben, ansonsten false
    - listChildren(); - Gibt ein String[] mit den Namen aller Kind-Elemente zurueck
    - getChildren(); / getChildren(name); - Gibt ein XML[] mit allen Kind-Elementen zurueck
      ~ name : Namde / Pfad des Elements (path/to/element)
    - getChild(index); / getChild(name); - Gibt das erste Kind-Element, das mit dem Parameter uebereinstimmt
      ~ index : Index des Kind-Elements
      ~ name : Name / Pfad des Elements (path/to/element)
    - addChild(tag); / addChild(name); - Fuegt ein neues Kind-Element in das Element ein
      ~ tag : Tag (String) als Name des Kind-Elements
      ~ name : Name als Referenz auf ein existierendes XML Objekt
    - removeChild(kid); - Entfernt ein bestimmtes Kind-Element
      ~ kid : XML Referenz auf ein Kind-Element
    - getAttributeCount(); - Gibt die Anzahl der Attribute eines Elements zurueck
    - listAttributes(); - Gibt ein String[] mit allen Attributen eines Elements zurueck
    - hasAttribute(name); - Prueft ob ein Element ein bestimmtes Attribut besitzt
      - name : Name des Attributs
    - getString(name); / getName(name,default); - Gibt den Wert eines Attributs zurueck
      ~ name : Name des Attributs
      ~ default : Alternativwert falls das Attribut nicht gefunden wird (oder null)
    - getInt(name); / getInt(name,default); - Gibt den Wert eines Attributs zurueck
      ~ name : Name des Attributs
      ~ default : Alternativwert falls das Attribut nicht gefunden wird (oder 0)
    - getFloat(name); / getFloat(name,default); - Gibt den Wert eines Attributs zurueck
      ~ name : Name des Attributs
      ~ default : Alternativwert falls das Attribut nicht gefunden wird (oder 0.0)  
    - setString(name,wert); - Setzt den Wert eines Attributs
      ~ name : Name des Attributs
      ~ wert : Zu setzender Wert
    - setInt(name,wert); - Setzt den Wert eines Attributs
      ~ name : Name des Attributs
      ~ wert : Zu setzender Wert 
    - setFloat(name,wert); - Setzt den Wert eines Attributs
      ~ name : Name des Attributs
      ~ wert : Zu setzender Wert
    - getContent(); / getContent(default); - Gibt den Kontent eines Elements zurueck
      ~ default : Alternativwert falls kein Kontent vorhanden ist (oder null)
    - getIntContent(); / getIntContent(default); - Gibt den Kontent eines Elements zurueck
      ~ default : Alternativwert falls kein Kontent vorhanden ist (oder null)
    - getFloatContent(); / getFloatContent(default); - Gibt den Kontent eines Elements zurueck
      ~ default : Alternativwert falls kein Kontent vorhanden ist (oder null)
    - setContent(wert); - Setzt den Kontent eines Elements
      ~ wert : Zu setzender Wert (String)
    - format(indent); - Formatiert ein XML Objekt zu einen String
      ~ indent : Einrueckung fuer die Konvertierung; -1 : Einzelne Zeile, >= 0 Einrueckung fuer neue Zeilen
    - toString(); - Formatiert ein XML Objekt zu einen String mit den normalen formatierungs Regeln
  
  XML(name); - [...}
    ~ name : Name des Knotens
  
  saveXML(xml,dateiname); - Schreibt den Kontent eines XML Objekts in eine XML Datei
    ~ xml : XML-Objekt
    ~ dateiname : Name / Pfad der Datei
  
  loadXML(dateiname); - Laedt eine XML Datei und erstellt daraus ein XML Objekt
    ~ dateiname : Name / Pfad der Datei    
  
  parseXML(xmlString); - Konvertiert einen String in ein XML Objekt
    ~ xmlString : Zu konvertierender String
  
*/

String xmlString  = "<Firma><Abteilung id=\"0\">HR</Abteilung><Abteilung id=\"1\">Forschung</Abteilung><Abteilung id=\"0\">Marketing</Abteilung></Firma>";
XML data;

void setup()
{
  // SETUP START
  data = new XML("EMPTY");
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
    erstelleDaten();
  } else if(key == 'a')
  {
    println(data.format(1));
  }else if(key == 'y')
  {
    printRandomMitarbeiter((int)random(data.getChildCount()));
  }else if(key == 'w')
  {
    //saveXML(data,"firma.xml");
    thread("saveXMLData");
  } else if(key == 's')
  {
    //data = new XML("EMPTY");
    //data = loadXML("firma.xml");
    thread("loadXMLData");
  } else if(key == 'x')
  {
    XML local = parseXML(xmlString);
    println(local.format(1));
  }
}

void erstelleDaten()
{
  data = new XML("Betrieb");
  data.addChild(erstelleAbteilung(0,"HR"));
  data.addChild(erstelleAbteilung(1,"Vertrieb"));
  data.addChild(erstelleAbteilung(2,"Forschung"));
  data.addChild(erstelleAbteilung(3,"Import"));
  
  fuegeMitarbeiterHinzu("HR",4,"John",13.25);
  fuegeMitarbeiterHinzu("Vertrieb",3,"Max",18.0);
  fuegeMitarbeiterHinzu("Vertrieb",2,"Paul",17.25);
  fuegeMitarbeiterHinzu("Vertrieb",0,"Anna",17.25);
  fuegeMitarbeiterHinzu("Forschung",5,"Sabrina",16.75);
  fuegeMitarbeiterHinzu("Forschung",1,"Tom",16.00);
  
  println("Haupt Attribute : " + data.getAttributeCount());
  println("Hauptknoten Name : " + data.getName());
  XML[] children = data.getChildren();
  for(int index = 0; index < children.length; index++)
  {
    println("  Index : " + index + " Child Name : " + children[index].getName());
    println("    Child Attribute : " + children[index].getAttributeCount());
    String[] attributes = children[index].listAttributes();
    print("    ");
    for(int index_ = 0; index_ < attributes.length; index_++)
    {
      print(attributes[index_]+ ", ");
    }
    println();
  }
  println();
  println(data.format(1));
  println();
  XML remove = data.getChild(3);
  data.removeChild(remove);
  println("Kind hat 'Name' Attribut ? :" + data.getChild(0).hasAttribute("Name"));
  data.setName("Firma");
  println(data.format(1));
  println();
}

XML erstelleAbteilung(int id, String name)
{
  XML abteilung = new XML("Abteilung");
  
  abteilung.setInt("id",id);
  abteilung.setString("name",name);
  
  return abteilung;
}

XML erstelleMitarbeiter(int id, String name, Float stundenlohn)
{
  XML mitarbeiter = new XML("Mitarbeiter");
  
  mitarbeiter.setInt("id",id);
  mitarbeiter.setFloat("lohn",stundenlohn);
  mitarbeiter.setContent(name);
  
  return mitarbeiter;
}

void fuegeMitarbeiterHinzu(String abteilung, int id, String name, Float stundenlohn)
{
  XML[] children = data.getChildren();
  XML abt = new XML("NONE");
  for(XML x : children)
  {
    if(x.getString("name").equals(abteilung))
    {
      abt = x;
      break;
    }
  }  
    abt.addChild(erstelleMitarbeiter(id,name,stundenlohn));
}

void printRandomMitarbeiter(int abteilung_id)
{
  XML[] children = data.getChildren();
  XML abt = new XML("NONE");
  for(XML x : children)
  {
    if(x.getInt("id")==abteilung_id)
    {
      abt = x;
      break;
    }
  }
  int rand = (int)random(abt.getChildCount());
  XML arbeiter = abt.getChild(rand);
  int id = arbeiter.getInt("id",-1);
  float lohn = arbeiter.getFloat("lohn",0.00);
  String name = arbeiter.getContent();
  println("Arbeiter ["+abt.getString("name")+"] Name : " + name + " | lohn : " + lohn + " | id : " + id);
}

void saveXMLData()
{
  saveXML(data,"firma.xml");
}

void loadXMLData()
{
  data = new XML("EMPTY");
  data = loadXML("firma.xml");
}
