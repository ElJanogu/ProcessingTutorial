/*
  
  Processing Tutorial
  Sketch Nr. 15
  Thema : Zeit
  
  Sketch Inhalte :
  
  year(); - Gibt das aktuelle Jahr durch Kommunikation mit dem Computer zurueck
  
  month(); - Gibt den aktuellen Monat durch Kommunikation mit dem Computer zurueck (1-12)
  
  day(); - Gibt den aktuellen Tag durch Kommunikation mit dem Computer zurueck (1-31)
  
  hour(); - Gibt die aktuelle Stunde durch Kommunikation mit dem Computer zurueck (0-23)
  
  minute(); - Gibt die aktuelle Minute durch Kommunikation mit dem Computer zurueck (0-59)
  
  second(); - Gibt die aktuelle Sekunde durch Kommunikation mit dem Computer zurueck (0-59)
  
  millis(); - Gibt die Anzahl an Millisekunden die seit dem starten des Programms vergangen sind
  
*/
int col, zaehler, zaehlerAlt;
void setup()
{
  // SETUP STARTS
  println("Datum : (DD:MM:YYYY) " + day() + ":" + month() + ":" + year());
  col = 0;
  zaehler = 0;
  zaehlerAlt = 0;
  // SETUP ENDE
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  background(col);
  // DRAW START
  
  zaehler = millis();
  
  if(zaehler >= zaehlerAlt + 50)
  {
    col++;
    zaehlerAlt = zaehler;
  }
  
  if(col == 255)
  {
    col = 0;
  }
  
  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  //line(0, mouseY, width, mouseY);
  //line(mouseX, 0, mouseX, height);
  //println(mouseX + " | " + mouseY);
}

void keyPressed()
{
  if(key == 'q')
  {
    println("Zeit : (HH:MM:SS)" + hour() + ":" + minute() + ":" + second());
  } else if(key == 'w')
  {
    println("Millis : " + millis() + " | als sec : " + millis()/1000);
  }
}
