/*
  
  Processing Tutorial
  Sketch Nr. 13
  Thema : Cursor
  
  Sketch Inhalte :
  
  cursor(); / cursor(typ); / cursor(image); / cursor(image,x,y); - Befiniert den Cursor bzw macht ihn wieder sichtbar wenn noCorsor verwendet wurde
    ~ typ : Cursor-Typ (ARROW,CROSS,HAND,MOVE,TEXT,WAIT)
    ~ image : Bild, empolend : 32x32 0der 64x54 Pixel
    ~ x : x-Stelle des Bildes (Pixel) an der sich der Cursor befindet
    ~ y : y-Stelle des Bildes (Pixel) an der sich der Cursor bedindet
  
  noCursor(); - Der Cursor wird innerhalb der Leinwand nicht mehr angezeigt
  
  "Custum" Cursor - Man kann mit den Formen einen eigenden Cursor erstellen, indem man mouseX und MouseY in die Positionswert mit einbezieht
  
*/

boolean mode;
int status, statusAlt;

void setup()
{
  // SETUP START
  size(500,500);
  status = 0;
  statusAlt = -1;
  // SETUP ENDE
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  background(125);
  // DRAW START
  
  switch(status)
  {
    case 0:
      cursor();
      println("Cursor");
      statusAlt = status;
      status = -1;
      break;
    case 1:
      noCursor();
      println("No Cursor");
      statusAlt = status;
      status = -1;
      break;
    case 2:
      cursor(ARROW);
      println("Arrow Cursor");
      statusAlt = status;
      status = -1;      
      break;
    case 3:
      cursor(CROSS);
      println("CROSS Cursor");
      statusAlt = status;
      status = -1;      
      break;
    case 4:
      cursor(HAND);
      println("HAND Cursor");
      statusAlt = status;
      status = -1;      
      break;
    case 5:
      cursor(MOVE);
      statusAlt = status;
      status = -1;      
      println("MOVE Cursor");
      break;
    case 6:
      cursor(TEXT);
      println("TEXT Cursor");
      statusAlt = status;
      status = -1;      
      break;
    case 7:
      cursor(WAIT);
      println("WAIT Cursor");
      statusAlt = status;
      status = -1;      
      break;
  }

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
    status = statusAlt + 1;
    if(status > 7) status = 0;
  } else if(key == 'a')
  {
    status = statusAlt - 1;
    if(status < 0) status = 7;
  }
  
}
