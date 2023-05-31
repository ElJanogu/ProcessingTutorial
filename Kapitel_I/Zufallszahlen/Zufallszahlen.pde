/*
  
  Processing Tutorial
  Sketch Nr. 26
  Thema : Zufallszahlen
  
  Sketch Inhalte :
  
  random(max); / random(min,max); - Zieht eine zufaellige Zahl zweischem dem Mindestwert (inklusive) und dem maximalen Wert (exklusive)
    ~ min : kleinste moegliche Zahl, die gezogen werden kann (ohne Parameter : 0)
    ~ max : Obergrenze der Zahlenauswahl, Parameter ist nicht inklusive
  
  randomSeed(seed); - Setzt den 'Seed' Wert fuer die random() Funktion
      Normalerweise liefert random() unterschiedliche ergebnisse bei jedem neuen Programmstart, mit einem Konstanten Seed wird bei jedem Programmstart die gleichen
      Pseudo-Zufallszahlen gezogen
    ~ seed : Seed Wert fuer die Zahlengenerierung
  
  randomGaussian(); - Gibt ein Zahl aus einer zufaelligen Serie von Nummern zurueck die einen Mittelwert von 0 und eine Standardabweichung von 1 haben
      Bei jedem Funktionsaufruf wird eine Zahl zurueckgegeben die in die gaussche Verteilung / Normalverteilung passt.
      Werte nahe des Mittelwertes (0) kommen haeufiger vor als Werte nahe der Standartabweichung (-1 & 1)
  
  noise(x,y); - Erstellt Zufallszahlen, die in einer Sequenz betrachtet organischer Wirken, diese Zahlen werden anhand der parameter bestimmt (Wie bei einer Tabelle)
    ~ x : x-Koordinate im Noise-Raum
    ~ y : y-Koordinate im Noise-Raum (Standard : 0)
  
  noiseSeed(seed); - Setzt den 'Seed' Wert fuer die noise() Funktion
      Normalerweise liefert noise() unterschiedliche ergebnisse bei jedem neuen Programmstart, mit einem Konstanten Seed wird bei jedem Programmstart die gleichen
      Pseudo-Zufallszahlen gezogen
    ~ seed : Seed Wert fuer die Zahlengenerierung
  
  noiseDetail(oktaven,falloff); - Aendert den Detaillierungsgrad mit dem die noise() Funktion Werte produziert. Noise wird ueber mehrere Oktaven berechnet
      Niegrigere Oktaven geben eine groessere Gesamtintensitaet waehrend hoehere Oktaven feinere Details erzeuigen
      Der 'falloff' Faktor bestimmt wie viel einfluss eine folgende Oktave gegenueber der vorherigen Oktave besitzt.
      Stamdard : Okt : 4, fall : 0.5; 1.okt : 100%, 2.okt : 50%, 3.okt : 25%, 4. okt 12.5%
    ~ oktaven : Anzahl der verwendeten Oktaven
    ~ falloff : 'Falloff' Faktor
  
*/
int mode, norm, gausZyklen, oktaven;
float xNoise, yNoise, falloff;
HashMap<Integer,Integer> map = new HashMap<Integer,Integer>();
boolean col;

void setup()
{
  // SETUP START
  size(1000,500);
  mode = -1;
  norm = width/2;
  gausZyklen = 1000;
  col = false;
  
  xNoise = 0.0;
  yNoise = 100.0;
  
  oktaven = 4;
  falloff = 0.5;
  noiseDetail(oktaven,falloff);
  // SETUP ENDE
}


void draw()
{
  // NICHT TEIL DES TUTORIALS
  //background(125);
  // DRAW START
  if(mode == -2)
  {
    background(125);
  } else if(mode == 0)
  {
    for(int index = 0; index < 1000; index++){
      stroke(random(255));
      line(index,0,index,500);
    }
    mode = -1;
  } else if(mode == 1)
  {
    for(int index = 0; index < gausZyklen; index++)
    {
      float rand = randomGaussian();
      int fixRand = round(rand * 500);
      
      int temp = map.getOrDefault(fixRand,0);
      map.put(fixRand,temp+1);
    }
    
    for(int spec = -500; spec < 500; spec++)
    {
      if(col)
      {
        stroke(0);
        col = !col;
      } else {
        stroke(255);
        col = !col;
      }
      
      line(spec+norm,500,spec+norm,500-map.getOrDefault(spec,0));
    }
    
    
    mode = -1;
  } else if(mode == 2)
  {
    background(125);
    xNoise = xNoise + 0.005;
    yNoise = yNoise + 0.005;
    float x = noise(xNoise) * width;
    float y = noise(yNoise) * height;
    
    circle(x,y,50);
    
  }
  
  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  //line(0, mouseY, width, mouseY);
  //line(mouseX, 0, mouseX, height);
  //println(mouseX + " | " + mouseY);
}

void keyPressed()
{
  if(key=='q')
  {
    mode = -2;
    map.clear();
    println("CLEAR");
  } else if(key == 'r')
  {
    mode = 0;
    println("Mode : BARCODE (random())");
  }else if(key == 'g')
  {
    mode = 1;
    println("Mode : CURVE (randomGaussian())");
  }else if(key == 'n'){
    mode = 2;
    println("Mode : CIRCLE (noise())");
  }else if(key == '1'){
    println("Mode : BARCODE (set randomSeed())");
    randomSeed(0);
  } else if(key == '2'){
    println("Mode : BALL (set noiseSeed())");
    noiseSeed(0);
  }else if(key == '9'){
    falloff += 0.01;
    noiseDetail(oktaven,falloff);
    println("falloff gesetzt : " + falloff);
  } else if(key == '6'){
    falloff -= 0.01;
    noiseDetail(oktaven,falloff);
    println("falloff gesetzt : " + falloff);
  } else if(key == '8'){
    oktaven += 1;
    noiseDetail(oktaven,falloff);
    println("oktaven gesetzt : " + oktaven);
  } else if(key == '5'){
    oktaven -= 1;
    noiseDetail(oktaven,falloff);
    println("oktaven gesetzt : " + oktaven);
  }
}
