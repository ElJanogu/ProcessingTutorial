/*
  
  Processing Tutorial
  Sketch Nr. 10
  Thema : Farbmanipulation
  
  Sketch Inhalte :
  
  color - Datentyp color wird genutzt um Farben zu speichern
  
  color(gr); / color(gr,a); / color(r,g,b); / color(r,g,b,a); / color(rgb);* / color(rgba);* - Wird verwendet um eine Farbe zu erstellen;
    ~ Bei Farben, die mit Hexadezimalzahlen erstellt werden (also #RRGGBB, 0xRRGGBB, 0XRRGGBB, 0xAARRGGBB, 0XAARRGGBB) kann color() weggelasen werden 
  
  Farbmodi :
    ~ gr : Generiert einen grauen Farbton; Wertebereich : 0 [Schwarz] - 255 [Weiss]
    ~ r : Stellt den Rot Anteil (oder hue (Farbton), abhaengig von colorMode*) einer Farbe; Wertebereich : 0 - 255
    ~ g : Stellt den Gruen Anteil (oder saturation (Saettigung), abhaengig von colorMode*) einer Farbe; Wertebereich : 0 - 255
    ~ b : Stellt den Blau Anteil (oder brightness (Helligkeit), abhaengig von colorMode*) einer Farbe; Wertebereich : 0 -255
    ~ rgb : Generiert einen Farbton von einem Hexadezimalwert oder einer color Variable*; Wertebereich #000000 - #FFFFFF
    ~ a : Fuegt der dem Farbton Transparenz hinzu, kann mit gr, r g b und rgb kombiniert werden; Wertebereich 0 (vollkommen transpaent) - 255 (nicht transparent)
    ~ argb : Generiert einen Farbton von einem Hexadezimalwert oder einer color Variable* mit transparent; Wertebereich : 0x / 0X 00000000 - FFFFFFFF
  
  colorMode(#Modus); / colorMode(#Modus, max); / colorMode(#Modus, max1, max2, max3); / colorMode(#Modus, max1, max2, max3, maxA); 
      - Aendert wie Art wie Farben interpretiert werden
    ~ Modi :
      -> RGB* : Setzt den Farbmodus zu RGB, also Rot, Gruen und Blau Werte der Farben 
      -> HSB : Setzt den Farbmodus zu HSB, also Hue (Farbton), Saturation (Saettigung) und Brightness (Helligkeit) Werte der Farben
    ~ max : Setzt den Wertebereich fuer alle Parameter (RGB und HSB so wie Alpha)
    ~ max1 : Setzt den Wertebreich fuer rot bzw hue (Farbton), anhaengig vom Modus
    ~ max2 : Setzt den Wertebereich fuer gruen bzw saturation (Saettigung), anhaengig vom Modus
    ~ max3 : Setzt den Wertebereich fuer blau bzw brightness (Helligkeit), anhaengig vom Modus
    ~ maxA : Setzt den Wertebereich fuer Alpha, also fuer Transparenz
    ~ Der Standard ist colorMode(RGB,255);
  
  lerpColor(color1, color2, position); - Erstellt eine Farbe die sich zwischen zwei Farben befindet
    ~ color1 : Erste Farbe
    ~ color2 : Zweite Farbe
    ~ position : Position der neuen Farbe zwischen color1 und color2; Wertebereich 0.0 (= color1) - 1.0 (= color2);
  
  red(color); - Kopiert den Rot-Wert aus einer Farbe
    ~ Farbe dessen Rot-Wert kopiert werden soll
  
  green(color); - Kopiert den Gruen-Wert aus einer Farbe
    ~ Farbe dessen Gruen-Wert kopiert werden soll
  
  blue(color); - Kopiert den Blau-Wert aus einer Farbe
    ~ Farbe dessen Blau-Wert kopiert werden soll
  
  hue(color); - Kopiert den Hue-Wert (Fabrton) aus einer Farbe
    ~ Farbe dessen Hue-Wert kopiert werden soll
  
  saturation(color); - Kopiert den Satuartion-Wert (Saettigung) aus einer Farbe
    ~ Farbe dessen Satuartion-Wert kopiert werden soll
  
  brightness(color); - Kopiert den Brightness-Wert (Helligkeit) aus einer Farbe
    ~ Farbe dessen Brightness-Wert kopiert werden soll
  
  alpha(color); - Kopiert den Alpha-Wert (Transparenz) aus einer Farbe
    ~ Farbe dessen Alpha-Wert kopiert werden soll
  
*/

color modusFarbe;
color kopierFarbe;
color leftColor;
color rightColor;

void setup()
{
  // SETUP START
  size(400,500);
  kopierFarbe = #DF3278;
  
  leftColor = #7D14FF;
  rightColor = #B9FF14;
  // SETUP ENDE
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  colorMode(RGB,255);
  background(125);
  // DRAW START
  
  // ***** Farbmodus *****
  colorMode(RGB,255);
  modusFarbe = color(125,0,75);
  fill(modusFarbe);
  circle(50,50,100);

  colorMode(RGB,125);
  fill(modusFarbe);
  circle(200,50,100);
  
  modusFarbe = color(125,0,75);
  fill(modusFarbe);
  circle(350,50,100);
  
  colorMode(RGB,255);
  
  line(0,100,width,100);
  
  // ***** Lerp-Farbe *****
  rectMode(CENTER);
  fill(leftColor);
  rect(50,150,75,75);
  fill(lerpColor(leftColor,rightColor,0.25));
  rect(125,150,75,75);
  fill(lerpColor(leftColor,rightColor,0.5));
  rect(200,150,75,75);
  fill(lerpColor(leftColor,rightColor,0.75));
  rect(275,150,75,75);
  fill(rightColor);
  rect(350,150,75,75);
  
  line(0,200,width,200);
  // ***** Farben Kopieren *****
  fill(kopierFarbe);
  circle(200,250,100);
  
  fill(red(kopierFarbe),0,0);
  circle(50,350,100);
  
  fill(0,green(kopierFarbe),0);
  circle(200,350,100);
  
  fill(0,0,blue(kopierFarbe));
  circle(350,350,100);
  
  colorMode(HSB,255);
  
  fill(hue(kopierFarbe),255,125);
  circle(50,450,100);
  
  fill(180,saturation(kopierFarbe),255);
  circle(200,450,100);
  
  fill(180,255,brightness(kopierFarbe));
  circle(350,450,100);
  
  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  line(0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);
  println(mouseX + " | " + mouseY);
}
