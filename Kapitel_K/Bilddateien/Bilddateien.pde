/*
  
  Processing Tutorial
  Sketch Nr. 30
  Thema : Bilddateien
  
  Sketch Inhalte :
  
  PImage - Datentyp zum speichern von Bildtadeien, kann .gif, .jpg, .tga und .png bilder anzeigen
    -> pixels[] : Speichert die Farbwerte aller Pixel des Bildes | (x,y) = pixels[y*width+x]
    -> width : Speichert die Breite des Bildes in Pixel
    -> height : Speichert die Hoehe des Bildes in Pixel
  
    -> loadPixels(); - laedt die Pixel Daten des bildes in das pixels[]
    -> updatePixels(); / updatePixels(x,y,w,h); - updated das Bild / oder einen Teil des Bildes mit den Daten im pixels[]
    -> resize(b,h); - Legt die Groesse des Bildes neu Fest
      ~ b : Neue Breite des Bildes in Pixel
      ~ h : Neue Hoehe des Bildes in Pixel
    -> get(x,y); / get(x,y,b,h); - Liest due Farbe eines Pixels oder Kopiert eine Auswahl von Pixel
      ~ x : x-Position des Pixels / der Auswahl
      ~ y : y-Position des Pixels / der Auswahl
      ~ b : Breite der Auswahl in Pixel
      ~ h : Hoehe der Auswahl in Pixel
    -> set(x,y,c); / set(x,y,image) - Setzt die Farbe eines bestimmen Pixels neu oder ueberschreibt einen Teil des Bildes mit einem neuen Bild
      ~ x : x-Koordiante
      ~ y : y-Korrdinate
      ~ c : Farbton der in das Pixel geschrieben wird
      ~ image : Bild das die daten des existierenden Bilden an beschriebener Stelle ueberschreibt
    -> mask(image); / mask(array) - Macht einen Teil des Bildes durchsichtig (Alphachannel) indem man ein anderen Bild als Maske (Schwarz-Weiss) verwendet
    -> filter(TYPE); / filter(TYPE,PARAM); - Legt einen Filter ueber das Bild
      ~ TYPE : THRESHOLD, GRAY*, OPAQUE*, INVERT*, POSTERIZE, BLUR, ERODE*, DILATE*
      ~ PARAM : Definiert Schwelle (0.0 - 1.0), Limitiert die Kanaele von RGB (2-255), Parameter bestimmt ausmass vom blurring
      *Nutzen PARAM nicht
    -> copy(); / copy(x1,y2,b1,h1,x2,y2,b2,h2); / copy(src,x1,y2,b1,h1,x2,y2,b2,h2); - Kopiert ein Bild, oder ein Teil eines Bildes
      ~ (x1/y1) :  Obere linke Ecke des Quellbildes
      ~ b1 & h1 : Breite und Hoehe des Quellbildes in Pixel
      ~ (x2/y2) :  Obere linke Ecke des Zielbildes
      ~ b2 & h2 : Breite und Hoehe des Zielbildes in Pixel
      ~ src : Quellbild
    -> blend(x1,y1,b1,h1,x2,y2,b2,h2,mode); / blend(src,x1,y1,b1,h1,x2,y2,b2,h2,mode); - Mischt Farben der Pixel neu
      ~ (x1/y1) : Koordinaten / Obere linke Ecke des Quellbildes
      ~ b1,h1 : Breite und Hoehe des Quellbildes in Pixel
      ~ (x2,y2) : Koordinaten / Obere linke Ecke des Zielbildes
      ~ b2,h2 : Breite und Hoehe des Zielbildes in Pixel
      ~ src : Quellbild
      ~ mode : Modus mit dem gemischt wird
        - BLEND : E = Q*F +Z | ADD : E = min(Q*F +Z, 255) | SUBTRACT : E = max(Z- Q*F, 0)
        - DARKEST : E = min(Q*F,Z) | LIGHTEST : E = max(Q*F,Z) | DIFFERENCE : Subtrahiert farbwerte des zugrunde liegenden Bildes
        - EXCLUSION : Wie DIFFERENCE, weniger extrem | MULTIPLY : Multipliziert Farbwerte, Ergebnis immer dunkler | SCREEN : Multiplizieren mit inversen der Farben
        - OVERLAY : Mischung aus MULTIPLY unf SCREEN, Multipliziert dunkle Werte und wendet SCREEN auf helle Werte an
        - HARD_LIGHT : SCREEN wenn mehr als 50% grau, MULTIPLY wenn darunter | SOFT_LIGHT : Mischung aus DARKEST / LIGHTEST, wie Overlay
        - DODGE : Hellt helle Toene auf und erhoeht Kontrast, ignoriert dunkle Toene
        - BURN : dunklere Bereiche werden verdunkelt, kontrast erhoeht, ignoroert helle Toene
        - Der Alpha Wert des Quellbildes (Q) wird als Faktor (F) verwendet, Zielbild ist Z und Ergebnis ist E
    -> save(dateiname); - Speichert ein Bild als Datei (.tif, .tga, .jpg oder .png)
      ~ dateiname : Name / Pfad der Datei die erstellt wird
      
  loadImage(dateiname); / loadImage(dateiname,dateityp) - laedt ein Bild in eine PImage Variable
    ~ dateiname : Name der Datei die geladen werden soll, wenn sie nicht gefunden wird, wird null zurueck gegeben
    ~ dateityp : Dateityp der Datei (.tga, .png, .gif, .jpg)
  
  createImage(b,h,format); - erstellt ein leeres Bild
    ~ b : Breite in Pixel
    ~ h : Hoehe in Pixel
    ~ format : RGB, ARGB, ALPHA
  
  image(img,x,y); / image(img,x,y,b,h); - Zeichnet ein Bild auf die Leinwand
    ~ img : Bild, das gezeichnet wird
    ~ (x/y) : Abhaengig vom Modus; (x/y) ist die Position der oberen linken Ecke oder des Zentrums vom Bild
    ~ b,h : Abhaengig vom Modus; b und h stellen die Breite und Hoehe (in Pixel) oder den Punkt in der unteren rechten Ecke des Bildes
  
  ImageMode(mode); - Legt den Modus fest mit dem Bilder auf die Leinwand gezeichnet werden
    ~ mode :
      - CENTER : (x/y) liegt im Zentrum des Bildes, b und h legen die Breite und Hoehe in Pixel fest
      - CORNER* : (x/y) liegt in der oberen linken Ecke des Bildes, b und h legen die Breite und Hoehe in Pixel fest
      - CORNERS : (x/y) liegt in der oberen linken Ecke des Bildes, (b/h) liegt in der unteren rechten Ecke des Bildes
   
  requestImage(dateiname); / requestImage(dateiname,dateityp); - laedt ein Bild ueber einen separaten Thread damit der sketch in der Ladezeit nicht einfriert
    ~ dateiname : Name der Datei die geladen werden soll, wenn sie nicht gefunden wird, wird null zurueck gegeben
    ~ dateityp : Dateityp der Datei (.tga, .png, .gif, .jpg)
    ~ image.width = 0 wenn noch nicht geladen und ist  -1 wenn ein Fehler auftritt
  
  Farbmodi :
    ~ gr : Generiert einen grauen Farbton; Wertebereich : 0 [Schwarz] - 255 [Weiss]
    ~ r : Stellt den Rot Anteil (oder hue (Farbton), abhaengig von colorMode*) einer Farbe; Wertebereich : 0 - 255
    ~ g : Stellt den Gruen Anteil (oder saturation (Saettigung), abhaengig von colorMode*) einer Farbe; Wertebereich : 0 - 255
    ~ b : Stellt den Blau Anteil (oder brightness (Helligkeit), abhaengig von colorMode*) einer Farbe; Wertebereich : 0 -255
    ~ rgb : Generiert einen Farbton von einem Hexadezimalwert oder einer color Variable*; Wertebereich #000000 - #FFFFFF
    ~ a : Fuegt der dem Farbton Transparenz hinzu, kann mit gr, r g b und rgb kombiniert werden; Wertebereich 0 (vollkommen transpaent) - 255 (nicht transparent)
    ~ argb : Generiert einen Farbton von einem Hexadezimalwert oder einer color Variable* mit transparent; Wertebereich : 0x / 0X 00000000 - FFFFFFFF
  
  tint(gr); / tint(gr,a); / tint(rgb); / tint(rgb,a); / tint(r,g,b); / tint(r,g,b,a); - Legt den Farbton folgender Bilder fest
  
  noTint(); - Entfernt Effekte durch tint();
  
  saveFrame(); / saveFrame(dateiname); - Speichert die aktuelle Leinwand als Bild (.tif, .tga, .jpg oder .png) [save(dateiname)]
    ~ dateiname : Name / Pfad unter dem das Bild gespeichert wird, ersetzt ###### mit frameCount
  
*/


PImage bild, maske, zufall, test;
byte display, increment, filter;
boolean pictureMode, zeigeZufall;
int back;

void setup()
{
  // SETUP START
  size(1280,720);
  freshPictures();
  display = -1;
  pictureMode = false;
  back = 0;
  increment = 1;
  filter = 0;
  zeigeZufall = false;
  // SETUP ENDE
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  background(back);
  back += increment;
  if(back == 0)
  {
    back = 1;
    increment = 1;
  } else if(back == 255)
  {
    back = 254;
    increment = -1;
  }
  
  // DRAW START
  if(display % 2 == 0) // 0,2
  {
    if(pictureMode) image(bild,0,0);
    if(!pictureMode) image(bild,0,0,1280,720);
  }
  if(display >= 1)  //1,2
  {
    image(maske,100,100);
  }
  
  if(zeigeZufall)
  {
    image(zufall,0,0);
  }
  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  line(0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);
  //println(mouseX + " | " + mouseY);
}

void keyPressed()
{
  if(key == ENTER)
  {
    freshPictures();
    //thread("freshPictures");
    println("REFRESH");
  } else if(key == '0')
  {
    display = 0;
    println("DISPLAY : 0");
  } else if(key == '1')
  {
    display = 1;
    println("DISPLAY : 1");
  } else if(key == '2')
  {
    display = 2;
    println("DISPLAY : 2");
  } else if(key == '5')
  {
    display = -1;
    println("DISPLAY : 2");
  } else if(key == 'q')
  {
    test = bild.get(800,200,400,300);
    maske.set(0,0,test);
    println("GET + SET");
  } else if(key == 'a')
  {
    bild.resize(900,450);
    maske.resize(900,450);
    println("RESIZE 1");
  } else if(key == 'y')
  {
    bild.resize(1280,720);
    maske.resize(1920,1080);
    println("RESIZE 2");
  } else if(key == 'w')
  {
    pictureMode = true;
    println("PICTURE MODE LOOSE");
  } else if(key == 's')
  {
    pictureMode = false;
    println("PICTURE MODE FIX");
  } else if(key == 'x')
  {
    bild.mask(maske);
  } else if(key == 'e')
  {
    imageMode(CORNER);
    println("IMAGE MODE CORNER");
  } else if(key == 'd')
  {
    imageMode(CORNERS);
    println("IMAGE MODE CORNERS");
  } else if(key == 'c')
  {
    imageMode(CENTER);
    println("IMAGE MODE CENTER");
  } else if(key == 'r')
  {
    switch(filter)
    {
       case 1:
         bild.filter(THRESHOLD,0.5);
         println("FILTER : THRESHOLD");
         break;
       case 2:
         bild.filter(GRAY);
         println("FILTER : GRAY");
         break;
       case 3:
         bild.filter(OPAQUE);
         println("FILTER : OPAQUE");
         break;
       case 4:
         bild.filter(INVERT);
         println("FILTER : INVERT");
         break;
       case 5:
         bild.filter(POSTERIZE,50);
         println("FILTER : POSTERIZE");
         break;
       case 6:
         bild.filter(BLUR,25);
         println("FILTER : BLUR");
         break;
       case 7:
         bild.filter(ERODE);
         println("FILTER : ERODE");
         break;
       case 8:
         bild.filter(DILATE);
         println("FILTER : DILATE");
         break;
    }    
  } else if(key == '+')
  {
    filter++;
    println("FILTER : " + filter);
  } else if(key == '-')
  {
    filter--;
    println("FILTER : " + filter);
  } else if(key == '*')
  {
    println("Pixel Farbe von Faktory : " + hex(bild.get(mouseX,mouseY)));
  } else if(key == 'f')
  {
    switch(filter)
    {
      case 1:
        bild.blend(0,0,bild.width,bild.height,0,0,bild.width,bild.height,BLEND);
        println("BLEND : BLEND");
        break;
      case 2:
        bild.blend(0,0,bild.width,bild.height,0,0,bild.width,bild.height,ADD);
        println("BLEND : ADD");
        break;
      case 3:
        bild.blend(0,0,bild.width,bild.height,0,0,bild.width,bild.height,SUBTRACT);
        println("BLEND : SUBTRACT");
        break;
      case 4:
        bild.blend(0,0,bild.width,bild.height,0,0,bild.width,bild.height,DARKEST);
        println("BLEND : DARKEST");
        break;
      case 5:
        bild.blend(0,0,bild.width,bild.height,0,0,bild.width,bild.height,LIGHTEST);
        println("BLEND : LIGHTEST");
        break;
      case 6:
        bild.blend(0,0,bild.width,bild.height,0,0,bild.width,bild.height,DIFFERENCE);
        println("BLEND : DIFFERENCE");
        break;   
      case 7:
        bild.blend(0,0,bild.width,bild.height,0,0,bild.width,bild.height,EXCLUSION);
        println("BLEND : EXCLUSION");
        break;
      case 8:
        bild.blend(0,0,bild.width,bild.height,0,0,bild.width,bild.height,MULTIPLY);
        println("BLEND : MULTIPLY");
        break;  
      case 9:
        bild.blend(0,0,bild.width,bild.height,0,0,bild.width,bild.height,SCREEN);
        println("BLEND : SCREEN");
        break;
      case 10:
        bild.blend(0,0,bild.width,bild.height,0,0,bild.width,bild.height,OVERLAY);
        println("BLEND : OVERLAY");
        break;
      case 11:
        bild.blend(0,0,bild.width,bild.height,0,0,bild.width,bild.height,HARD_LIGHT);
        println("BLEND : HARD_LIGHT");
        break;
      case 12:
        bild.blend(0,0,bild.width,bild.height,0,0,bild.width,bild.height,SOFT_LIGHT);
        println("BLEND : SOFT_LIGHT");
        break;
      case 13:
        bild.blend(0,0,bild.width,bild.height,0,0,bild.width,bild.height,DODGE);
        println("BLEND : DODGE");
        break;
      case 14:
        bild.blend(0,0,bild.width,bild.height,0,0,bild.width,bild.height,BURN);
        println("BLEND : BURN");
        break;        
    }
  } else if(key == 'v')
  {
    saveFrame();
    println("SAVED FRAME");
  } else if(key == 't')
  {
    tint(200,0,0);
  } else if(key == 'g')
  {
    noTint();
  } else if(key == 'b')
  {
    zufall = bild.copy();
    zeigeZufall = true;
    display = -1;
    println("COPY");
  } else if(key == 'z')
  {
    zufall.resize(300,300);
    zufall.loadPixels(); 
    println("LOAD PIXELS");
  } else if(key == 'h')
  {
    for(int index = 0; index < (zufall.width*zufall.height); index++)
    {
      int r = (int)random(256);
      int g = (int)random(256);
      int b = (int)random(256);
      
      zufall.pixels[index] = color(r,g,b);
    }
    zufall.updatePixels();
    println("OVERWRITE PIXELS");
    
  } else if(key == 'n')
  {
    zufall.save("zufall.png");
    //thread("saveZufall");
    println("SAVE PIXELS");
  }

}

void freshPictures()
{
  bild = requestImage("Factory.png");
  maske = loadImage("maske.png");
  zufall = createImage(500,500,RGB);
}

void saveZufall()
{
  zufall.save("zufall.png");
}
