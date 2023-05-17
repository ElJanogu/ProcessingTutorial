/*
  
  Processing Tutorial
  Sketch Nr. 09
  Thema : Flaechen und Linien faerben
  
  Sketch Inhalte :
  
  noFill(); - Bewirkt, dass bei den folgenden Formen die Flaechen nicht mehr gezeichnet werden
  
  noStroke(); - Bewirkt, dass bei den folgenden Formen die Linien nicht mehr gezeichnet werden
  
  background(gr); / background(gr,a); / background(r,g,b); / background(r,g,b,a); / background(rgb); / background(rgb,a); / background(argb); 
  => Legt die Farbe der Leinwand fest
  
  fill(gr); / fill(gr,a); / fill(r,g,b); / fill(r,g,b,a); / fill(rgb); / fill(rgb,a); / fill(argb); - Legt die Farbe der Flaechen der folgenden Formen fest
  
  stroke(gr); / stroke(gr,a); / stroke(r,g,b); / stroke(r,g,b,a); / stroke(rgb); / stroke(rgb,a); / stroke(argb); - Legt die Farbe der Linien der folgenden Formen fest
  
  Farbmodi :
    ~ gr : Generiert einen grauen Farbton; Wertebereich : 0 [Schwarz] - 255 [Weiss]
    ~ r : Stellt den Rot Anteil (oder hue (Farbton), abhaengig von colorMode*) einer Farbe; Wertebereich : 0 - 255
    ~ g : Stellt den Gruen Anteil (oder saturation (Saettigung), abhaengig von colorMode*) einer Farbe; Wertebereich : 0 - 255
    ~ b : Stellt den Blau Anteil (oder brightness (Helligkeit), abhaengig von colorMode*) einer Farbe; Wertebereich : 0 -255
    ~ rgb : Generiert einen Farbton von einem Hexadezimalwert oder einer color Variable*; Wertebereich #000000 - #FFFFFF
    ~ a : Fuegt der dem Farbton Transparenz hinzu, kann mit gr, r g b und rgb kombiniert werden; Wertebereich 0 (vollkommen transpaent) - 255 (nicht transparent)
    ~ argb : Generiert einen Farbton von einem Hexadezimalwert oder einer color Variable* mit transparent; Wertebereich : 0x / 0X 00000000 - FFFFFFFF
  
*/

float grautransparenz;

float redHigh;
float greenLow;
float transparentLow;
float transparentHigh;

void setup()
{
  // SETUP START
  size(500,500);
  grautransparenz = 0.0;
  
  redHigh = 255.0;
  greenLow = 0.0;
  transparentLow = 0.0;
  transparentHigh = 255.0;
  // SETUP ENDE
}

void draw()
{
  // DRAW START
  background(125);
  
  // ***** Reihe 1 : Grau ohne Transparenz *****
  fill(0);
  circle(50,60,100);
  
  fill(51);
  circle(50,135,100);
  
  //fill(102);
  noFill();
  circle(50,210,100);
  
  fill(153);
  circle(50,285,100);
  
  noStroke();
  fill(204);
  circle(50,360,100);
  
  stroke(0);
  fill(255);
  circle(50,435,100);
  
  // ***** Reihe 2 : Grau mit Transparenz *****
  fill(0,grautransparenz);
  circle(150,60,100);
  
  fill(51,grautransparenz);
  circle(150,135,100);
  
  fill(102,grautransparenz);
  circle(150,210,100);
  
  fill(153,grautransparenz);
  circle(150,285,100);
  
  fill(204,grautransparenz);
  circle(150,360,100);
  
  fill(255,grautransparenz);
  circle(150,435,100);

  grautransparenz += 0.25;
  
  // ***** Reihe 3 RGB und strokes *****
  stroke(255,0,0);
  fill(0,255,255,125);
  circle(250,60,100);
  
  stroke(0,255,0);
  fill(125,75,100,200);
  circle(250,135,100);
  
  stroke(0,0,255);
  fill(100,255,0,255);
  circle(250,210,100);
  
  stroke(255,255,0);
  fill(50,50,200,33);
  circle(250,285,100);
  
  stroke(255,0,255);
  fill(180,180,180,250);
  circle(250,360,100);
  
  stroke(0,255,255);
  fill(50,50,50,180);
  circle(250,435,100);
  
  // ***** Reihe 4 Hexadezimal RGB und Transparent *****
  stroke(0);
  
  fill(#FFA034);
  circle(350,60,100);
  
  fill(#58FAA4,200);
  circle(350,135,100);
  
  fill(#FF00FF,125);
  circle(350,210,100);
  
  fill(0xFF0CDF00);
  circle(350,285,100);
  
  fill(0XFFFC85AA,100);
  circle(350,360,100);
  
  fill(0XBDFFFF00);
  circle(350,435,100);
  
  // ***** Reihe 5 Farbmix *****
  stroke(0,greenLow,255,transparentLow);
  fill(redHigh,125,0,transparentHigh);
  circle(450,250,100);
  
  transparentLow += 0.25;
  transparentHigh -= 0.1;
  redHigh -= 0.33;
  greenLow += 0.1;

  stroke(0);
  line(0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);
  println(mouseX + " | " + mouseY);
  // DRAW ENDE
}
