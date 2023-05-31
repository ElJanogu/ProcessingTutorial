/*
  
  Processing Tutorial
  Sketch Nr. 24
  Thema : Kalkulation
  
  Sketch Inhalte :
  
  abs(wert); - Berechnet wie Hoehe des Parameters, positive Werte bleiben unveraendert und negative werte werden zu positiven werten
    ~ wert : Wert dessen Hoehe berechnert wird, int oder float

  floor(wert); - Berechnet den naechst kleineren ganzzahligen Wert
    ~ wert : Wert der abgerundet wird (float)
  
  ceil(wert); - Berechnet den naechst hoeheren ganzzahligen Wert

  round(wert); - rundet den Parameter auf den am nächsten gelegenden ganzzahligen Wert
    ~ wert : zu rundener Wert 
  
  min(a,b); / min(a,b,c); / min(array); - Gibt den kleinstern Wert aus den Parametern zurueck
    ~ a : erste zahl (float, int)
    ~ b : zweite zahl (float, int)
    ~ c :  dritte zahl (float, int)
    ~ array : Array von Zahlen (float, int)
  
  max(a,b); / max(a,b,x); / max(array); - Gibt den groessten Wert aus den Parametern zurueck
    ~ a : erste zahl (float, int)
    ~ b : zweite zahl (float, int)
    ~ c :  dritte zahl (float, int)
    ~ array : Array von Zahlen (float, int)  
      
  constrain(wert,min,max); - Begrenzt einen Wert zwischen dem kleinsten Wert (minimum) und dem groessten Wert (maximum)
    ~ wert : Wert, der begrenzt wird (float, int)
    ~ min : Untergrenze, ist der Wert kleiner als das minium wird er auf das minimum gesetzt (float, int)
    ~ max : Obergrenze, ist der Wert groesser als das maximum wird er auf das maximum gesetzt (float, int)
  
  dist(x1,y1,x2,y2); - Berechnet die Distanz zwischen zwei Punkten
    ~ x1/y1 : Erster Punkt
    ~ x2/y2 : Zweiter Punkt

  mag(x,y); - Berechnet die Laenge eines Vektors bzw die Distanz vom Koordinatenursprung zum Zielpunkt des Vektors [dist(0,0,x,y)]
    ~ x/y : Werte des Vektors / Punkt zu dem die Laenge berechnet wird
  
  lerp(start,stop,position); - Berechnet einen Wert zwischen zwei Parametern
    ~  ~ start : Start-Wert der berechnung
    ~ stop : End-Wert der Berechnung
    ~ position : Position des Berechneten Wertes innerhalb von start und stop, 0.0 : start, 1.0 = stop, 0.5 = (start+stop)/2
  
  map(wert,start1,stop1,start2,stop2); - "remappt" / uebersetzt einen Wert von einen Zahlenbereich in einen anderen Zahlenbereich
    ~ wert : Wert, der "remappt" wird
    ~ start1 : Start des originalen Zahlenbereiches
    ~ stop1 : Ende des originalen Zahlenbereiches
    ~ start2 : Start des gemappten Zahlenbereiches
    ~ stop2 : Ende des gemappten Zahlenbereiches

  norm(wert,start,stop); - Normt den Wert aus einem beliebigen Zahlenbereich zu einen Wert zwischen 0 und 1 [map(wert,start,stop,0,1)]
    ~ wert : Wert, der genormt wird
    ~ start : Startwert des originalen Zahlenbereiches
    ~ stop : Endwert des originialen Zahlenbereiches
  
  exp(exponent); - Berechnet die Eulersche Zahl e (2.71828...) potenziert mit Parameter
    ~ exponent : exponent der Berechnung (float)

  pow(b,e); - Berechnet das Ergebnis von basis 'hoch' exponent (b^e)
    ~ b : Basis der Potenzierung
    ~ e : Exponent der Potenzierung
  
  sq(wert); - quadriert den Parameter (multipliziert den Parameter mit sich selbst)
    ~ wert : zu quadrierender Wert
  
  sqrt(wert); - Berechnet die Quadratwurzel des Parameters
    ~ wert : Wert, von dem die Quadratwurzel gezogen werden soll
  
*/

Integer zahlI;
Float zahlF;

int[] arrayI = new int[]{5,2,7,4,19,-2};
float[] arrayF = new float[]{-43.02,22.52,0.234,12.0,-3.12};
boolean alive = false;
float tempX, tempY;

void setup()
{
  // SETUP START
  size(500,500);
  tempX = 0.0;
  tempY = 0.0;
  
  zahlI = -53;
  zahlF = 22.53;
  
  println(abs(zahlI));
  println(abs(zahlF));
  
  println();
  
  println(floor(zahlI));
  println(ceil(zahlI));
  println(round(zahlI));
  
  println(floor(zahlF));
  println(ceil(zahlF));
  println(round(zahlF));
  
  println();
  
  println(min(arrayI)); // alternative : min(arrayI[0],arrayI[1],arrayI[2])
  println(max(arrayI)); // alternative : max(arrayI[0],arrayI[1],arrayI[2])
  
  println(min(arrayF)); // alternative : min(arrayF[0],arrayF[1],arrayF[2])
  println(max(arrayF)); // alternative : max(arrayF[0],arrayF[1],arrayF[2])
  
  println();
  
  println(constrain(zahlI,0,100));
  println(constrain(zahlI,-50,50));
  println(constrain(zahlI,-100,0));
  
  println();
  
  println(dist(0,0,10,0));
  println(dist(7.2,-4.0,17.5,12.25));
  
  println(mag(10,0));
  
  println();
  
  println(lerp(0,100,0.25));
  
  println();
  
  println(map(2.65,0,10,100,1100));
  println(map(2.65,0,10,0,100));
  
  println(norm(2.65,0,10));
  
  println();
  
  println(exp(1.0));
  println(exp(2.0));
  
  println(pow(2,10));
  println(pow(2,-2));
  
  println(sq(2));
  println(sq(3));
  
  println(sqrt(9));
  println(sqrt(64));
  // SETUP ENDE
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  background(125);
  // DRAW START
  if(alive)
  {
    fill(255,0,0);
    circle(250,250,10);
    circle(mouseX,mouseY,10);
    
    println("Distanz : " + dist(250,250,mouseX,mouseY));
    
    fill(0,255,255);
    
    tempX = lerp(250.0,mouseX,0.25);
    tempY = lerp(250.0,mouseY,0.25);
    circle(tempX,tempY,5);
    
    tempX = lerp(250.0,mouseX,0.5);
    tempY = lerp(250.0,mouseY,0.5);
    circle(tempX,tempY,5);
    
    tempX = lerp(250.0,mouseX,0.75);
    tempY = lerp(250.0,mouseY,0.75);
    circle(tempX,tempY,5);
    
    println("Mapped Position (x/y) ("+map(mouseX,0,500,-250,250) + "/" + map(mouseY,0,500,-250,250));
    
    
  }

  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  //line(0, mouseY, width, mouseY);
  //line(mouseX, 0, mouseX, height);
  //println(mouseX + " | " + mouseY);
}

void keyPressed()
{
  
  if(key == 's')
  {
    alive = true;
  }
  
}
