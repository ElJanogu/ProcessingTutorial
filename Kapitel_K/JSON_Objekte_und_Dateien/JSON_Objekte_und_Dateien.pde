/*
  
  Processing Tutorial
  Sketch Nr. 34
  Thema : JSON Objekte & Dateien
  
  Sketch Inhalte :
  
  JSONObject - ein JSONObject speichert JSON daten aus mehreren name-value paaren Werte koennen numberisch,String,boolean,JSONObject,JSONArray oder null sein
    - getString(key); / getString(key,default); - Gibt einen String Wert zu einem bestimmten Schluessel zurueck
      ~ key : Schluessel nach dem gesucht wird
      ~ default : Alternativwert, der zurueck gegeben wird, falls der Schluessel nicht gefunden wird
    - getInt(key); / getInt(key,default); - Gibt einen Integer Wert zu einem bestimmten Schluessel zurueck
      ~ key : Schluessel nach dem gesucht wird
      ~ default : Alterntivwert, der zurueck gegeben wird, falls der Schluessel nicht gefunden wird
    - getFloat(key); / getFloat(key,default); - Gibt einen Float Wert zu einem bestimmten Schluessel zurueck
      ~ key : Schluessel nach dem gesucht wird
      ~ default : Alternativwert, der zurueck gegeben wird, falls der Schluessel nicht gefunden wird
    - getBoolean(key); / getBoolean(key,default); - Gibt einen Boolean  Wert zu einem bestimmten Schluesel zurueck
      ~ key : Schluessel nach dem gesucht wird
      ~ default : Alternativwert, der zurueck gegeben wird, falls der Schluessel nicht gefunden wird
    - getJSONObject(key); - Gibt ein JSONObject zu einem bestimmten Schluessel zurueck
      ~ key : Schluessel nach dem gesucht wird 
    - getJSONArray(key); - Gibt ein JSONArray zu einem bestimmten Schluessel zurueck
      ~ key : Schluessel nach dem gesucht wird 
    - setString(key,wert); - Fuegt ein neues Schluessel-werte Paar in das JSONObject ein, oder ueberschreibt den Wert wenn der Schluessel bereits existiert
      ~ key : einzufuegender Schluessel
      ~ wert : einzufuegender Wert
    - setInt(key,wert); - Fuegt ein neues Schluessel-werte Paar in das JSONObject ein, oder ueberschreibt den Wert wenn der Schluessel bereits existiert
      ~ key : einzufuegender Schluessel
      ~ wert : einzufuegender Wert
    - setFloat(key,wert); - Fuegt ein neues Schluessel-werte Paar in das JSONObject ein, oder ueberschreibt den Wert wenn der Schluessel bereits existiert
      ~ key : einzufuegender Schluessel
      ~ wert : einzufuegender Wert
    - setBoolean(key,wert); - Fuegt ein neues Schluessel-werte Paar in das JSONObject ein, oder ueberschreibt den Wert wenn der Schluessel bereits existiert
      ~ key : einzufuegender Schluessel
      ~ wert : einzufuegender Wert
    - setJSONObject(key,wert); - Fuegt ein neues Schluessel-werte Paar in das JSONObject ein, oder ueberschreibt den Wert wenn der Schluessel bereits existiert
      ~ key : einzufuegender Schluessel
      ~ wert : einzufuegender Wert    
    - setJSONArray(key,wert); - Fuegt ein neues Schluessel-werte Paar in das JSONObject ein, oder ueberschreibt den Wert wenn der Schluessel bereits existiert
      ~ key : einzufuegender Schluessel
      ~ wert : einzufuegender Wert
    - isNull(key); - Prueft ob der gegebende Schluessel einen definierten Wert besitzt, kein Wert = false, Wert = true
      ~ key : zu pruefender Schluessel
  
  JSONArray
    - getString(index); / getString(index,default); - Gibt den String-Wert vom einem bestimmten Index zurueck
      ~ index : Index nach dem gesucht wird
      ~ default : alternativwert
    - getInt(index); / getInt(index,default); - Gibt den Integer-Wert vom einem bestimmten Index zurueck
      ~ index : Index nach dem gesucht wird
      ~ default : alternativwert    
    - getFloat(index); / getFloat(index,default); - Gibt den Float-Wert vom einem bestimmten Index zurueck
      ~ index : Index nach dem gesucht wird
      ~ default : alternativwert    
    - getBoolean(index); / getBoolean(index,default); - Gibt den Boolean-Wert vom einem bestimmten Index zurueck
      ~ index : Index nach dem gesucht wird
      ~ default : alternativwert      
    - getJSONObject(index); / getJSONObject(index,default) - Gibt ein JSONObject von einem bestimmten Index zurueck
      ~ index : Index nach dem gesucht wird
      ~ default : alternativwert      
    - getJSONArray(index); / getJSONArray(index,default); - Gibt ein JSONArray on einem bestimmten Index zurueck
      ~ index : Index nach dem gesucht wird
      ~ default : alternativwert 
    - getStringArray(); - Gibt das gesamte JSONArray als String[] zurueck, alle Werte muessen von Typ String sein
    - getIntArray(); - Gibt das gesamte JSONArray als int[] zurueck, alle Werte muessen von Typ int sein
    - setString(index,wert); - Fuegt einen neuen Wert an einen bestimmten Index ein, ist der Index bereits belegt wird der wert ueberschrieben,
        ist der index groesser als die Array-groesse wird das Array mit null Elementen aufgefuellt
      ~ index : Index an dem ein Wert eingefuegt wird
      ~ wert : Einzufuegender Wert
    - setInt(index,wert); - Fuegt einen neuen Wert an einen bestimmten Index ein, ist der Index bereits belegt wird der wert ueberschrieben, [...]
      ~ index : Index an dem ein Wert eingefuegt wird
      ~ wert : Einzufuegender Wert
    - setFloat(index,wert); - Fuegt einen neuen Wert an einen bestimmten Index ein, ist der Index bereits belegt wird der wert ueberschrieben, [...]
      ~ index : Index an dem ein Wert eingefuegt wird
      ~ wert : Einzufuegender Wert    
    - setBoolean(index,wert); - Fuegt einen neuen Wert an einen bestimmten Index ein, ist der Index bereits belegt wird der wert ueberschrieben, [...]
      ~ index : Index an dem ein Wert eingefuegt wird
      ~ wert : Einzufuegender Wert      
    - setJSONObject(index,wert); - Fuegt einen neuen Wert an einen bestimmten Index ein, ist der Index bereits belegt wird der wert ueberschrieben, [...]
      ~ index : Index an dem ein Wert eingefuegt wird
      ~ wert : Einzufuegender Wert       
    - setJSONArray(index,wert); - Fuegt einen neuen Wert (Array) an einen bestimmten Index ein, ist der Index bereits belegt wird der wert ueberschrieben, [...]
      ~ index : Index an dem ein Wert eingefuegt wird
      ~ wert : Einzufuegender Wert     
    - isNull(index); - Prueft ob der Wert bei einem bestimmten Index null ist, kein Wert = false, Wert = true
    - append(wert); - Fuegt einen neuen Wert an das Ende des Arrays an
      ~ wert : einzufeugender Wert (boolean, int, float, String, JSONObject, JSONArray)
    - remove(index); - Entfernt ein bestimmtes Element aus dem Array
      ~ index : Index dessen Wert aus dem JSONArray entfernt wird
    - size(); - Gibt die Anzahl der Eintraege im JSONArray zurueck
  
  loadJSONArray(dateiname); - Laedt eine JSON Datei und speichert das Array von JSON Objekten in einem JSONArray
    ~ dateiname : Name / Pfad der Datei 
  
  loadJSONObject(dateiname); - Laedt eine JSON Datei und speichert den Inhalt in einem JSONObject
    ~ dateiname : Name / Pfad der Datei 
  
  parseJSONArray(str); - Uebersetzt den Inhalt eines Strings in ein JSONArray, wenn die Uebersetzung nicht gelingt, wird null zurueck gegeben
    ~ str : Zu uebersetzender String

  parseJSONObject(str); - Uebersetzt den Inhalt eines Strings in ein JSONObject, wenn die Uebersetzung nicht gelingt, wird null zurueck gegeben
    ~ str : Zu uebersetzender String
  
  saveJSONArray(json,dateiname); / saveJSONArray(json,dateiname,optionen); - Schreibt den Inhalt eines JSONArrays in eine Datei
  
  saveJSONObject(json,dateiname); / saveJSONObject(json,dateiname,optionen); - Schreibt den Inhalt eines JSONObjects in eine Datei
    ~ json : JSONObject, dessen Inhalt gespeichert wird
    ~ dateiname : Name / Pfad der Datei
    ~ optionen : entweder "compact" oder "indent=N" wobei N die anzahl der Leerzeichen ist

*/

JSONObject object;
JSONArray array;

                  // {   key : value, key :    value ... }, Strings in \" ... \" 
String dataObjekt = "{ \"id\": 0, \"Money\": 12.75, \"Code\": \"LOL\", \"aktiv\" : true}";

                    // [wert, wert, wert, ....], Strings in \" ... \" 
String dataArray  = "[ \"Capra hircus\", \"Panthera pardus\", \"Equus zebra\" ]";

void setup()
{
  // SETUP START
  object = new JSONObject();
  array = new JSONArray();
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
    createData();
  } else if(key == 'w')
  {
    printData(); 
  } else if(key == 'e')
  {
    //saveData();
    thread("saveData");
  } else if(key == 'r')
  {
    //loadData();
    thread("loadData");
  } else if(key == 't')
  {
    decodeObject(dataObjekt);
  } else if(key == 'z')
  {
    decodeArray(dataArray);
  }
}

void createData()
{
  object = new JSONObject();
  array = new JSONArray();
  
  object = randomJSONObject();
  array = randomJSONArray();
  
  println(object.isNull("Integer"));
  println(array.isNull(9));
}

void saveData()
{
  saveJSONObject(object,"object.json","indent=3");
  saveJSONArray(array,"array.json","indent=1");
}

void loadData()
{
  object = new JSONObject();  
  array = new JSONArray();
  
  object = loadJSONObject("object.json");
  array = loadJSONArray("array.json");
}

void printData()
{
  println(object);
  println();
  println(printJSONObject(object));
  println();
  println(array);
  println();
  println(printJSONArray(array));
}

void decodeObject(String str)
{
  JSONObject local = new JSONObject();
  local = parseJSONObject(str);
  println(local);
}

void decodeArray(String str)
{
  JSONArray local = new JSONArray();
  local = parseJSONArray(str);
  println(local);
}

JSONObject randomJSONObject()
{
  JSONObject json = new JSONObject();
  json.setBoolean("Boolean",randomBoolean());
  json.setInt("Integer",(int)random(100));
  json.setFloat("Float",random(-24.99,25.0));
  json.setString("String",randomString());
  json.setJSONObject("JSONObject",randomJSONObject_());
  json.setJSONArray("JSONArray",randomJSONArray_());
  
  return json;
}

JSONObject randomJSONObject_()
{
  JSONObject json = new JSONObject();
  json.setBoolean("Boolean",randomBoolean());
  json.setInt("Integer",(int)random(100));
  json.setFloat("Float",random(-24.99,25.0));
  json.setString("String",randomString());
  
  return json;
}

JSONArray randomJSONArray()
{
  JSONArray json = new JSONArray();
  
  json.setBoolean(0,randomBoolean());
  json.setInt(1,(int)random(100));
  json.setFloat(2,random(-24.99,25.0));
  json.setString(3,randomString());
  json.setJSONObject(4,randomJSONObject_());
  json.setJSONArray(5,randomJSONArray_());
  
  return json;
}

JSONArray randomJSONArray_()
{
  JSONArray json = new JSONArray();
  
  json.setBoolean(0,randomBoolean());
  json.setInt(1,(int)random(100));
  json.setFloat(2,random(-24.99,25.0));
  json.setString(3,randomString());
  
  return json;
}

boolean randomBoolean()
{
  return (int)random(2) % 2 == 0;
}

String randomString()
{
  String str = "";
  
  for(int index = 0; index < 5; index++)
  {
    str += String.valueOf((char)(int)random(65,65+27));
  }
  
  return str;
}

String printJSONObject(JSONObject json)
{
  return json.getBoolean("Boolean",false) 
    + " | " + json.getInt("Integer",0)
    + " | " + json.getFloat("Float",0.0)
    + " | " + json.getString("String","")
    + "\n" + printJSONObject_(json.getJSONObject("JSONObject"))
    + "\n" + printJSONArray_(json.getJSONArray("JSONArray"));
}

String printJSONObject_(JSONObject json)
{
  return json.getBoolean("Boolean",false) 
    + " | " + json.getInt("Integer",0)
    + " | " + json.getFloat("Float",0.0)
    + " | " + json.getString("String","");
}

String printJSONArray(JSONArray json)
{
  return json.getBoolean(0,false) 
    + " | " + json.getInt(1,0)
    + " | " + json.getFloat(2,0.0)
    + " | " + json.getString(3,"")
    + "\n" + printJSONObject_(json.getJSONObject(4))
    + "\n" + printJSONArray_(json.getJSONArray(5));
}

String printJSONArray_(JSONArray json)
{
  return json.getBoolean(0,false) 
    + " | " + json.getInt(1,0)
    + " | " + json.getFloat(2,0.0)
    + " | " + json.getString(3,"");
}
