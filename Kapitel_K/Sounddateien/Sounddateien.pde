/*
  
  Processing Tutorial
  Sketch Nr. 31
  Thema : Sounddateien
  
  Sketch Inhalte :
  
  SoundFile - Soundfile-Spieler mit dem Sounddateien abgespielt und manipuliert werden koennen, Unterstuetzt .WAV, .AIF / .AIFF und .MP3
    -> removeFromCache(); - Entfernt das decodierte Audiosample aus dem cache
    -> channels(); - Gibt die Anzahl der Audiokanaele zurueck (1 fuer Mono und 2 fuer Stereo)
    -> cue(time); - Setzt den Abspielkopf an eine feste Position in der Sounddatei, hat nur einen Effekt auf play() nicht auf loop()
      ~ time : Position (Startzeit) des Abspielkopf in Sekunden (float)
    -> duration(); - Gibt die Dauer der Sounddatei in Sekunden zurueck
    -> frames(); - Gibt die Anzahl der Frames der Sounddatei zurueck
    -> play(); / play(rate); / play(rate,amp); / play(rate,pos,amp); / play(rate,pos,amp,add); / play(rate,pos,amp,add,cue); - Spielt den Sound vom Abspielkopf aus
        ein einziges mal ab
      ~ rate : Abspielrate (float), 1 ist Standard, 2 ist doppelte Geschwindigkeit
      ~ amp : Die Lautstaerke des Sounds, 0.0 ist Lautlos und 1.0 ist volle Lautsraerke
      ~ pos : Die Panoramaposition des Sounds, -1.0 fuer links und 1.0 fuer rechts, Funktioniert nur bei Mono
      ~ add : versetzt die Ausgabe um den angegebenden Wert
      ~ cue : Position im audiosample an der das abspielen starten soll
    -> jump(time); - Springe zu einer bestimmten Position in der Datei waehrend sie abgespielt wird bzw starte sie abzuspielen wenn dies nicht der Fall ist
      ~ time : Position (Startzeit) in Sekunden (float)
    -> pause(); - Pausiert das abspielen der Sounddatei, beim erneuten abspielen wird bei dem cue fortgefahren
    -> isPlaying(); - Prueft ob die Soundatei zur Zeit abgespielt wird, in diesem fall wird true zurueck gegeben, ansonsten false
    -> loop(); / loop(rate); / loop(rate,amp); / loop(rate,pos,amp); / loop(rate,pos,amp,add); / play(rate,pos,amp,add,cue); - Spielt die Sounddatei in einem Loop ab
      ~ rate : Abspielrate (float), 1 ist Standard, 2 ist doppelte Geschwindigkeit
      ~ amp : Die Lautstaerke des Sounds, 0.0 ist Lautlos und 1.0 ist volle Lautsraerke
      ~ pos : Die Panoramaposition des Sounds, -1.0 fuer links und 1.0 fuer rechts, Funktioniert nur bei Mono
      ~ add : versetzt die Ausgabe um den angegebenden Wert
    -> amp(amp); - Legt die Lautstaerke des Sounds fest, 0.0 ist Lautlos und 1.0 ist volle Lautsraerke
    -> pan(pos); - Legt die Panoramaposition des Sounds fest, -1.0 fuer links und 1.0 fuer rechts, Funktioniert nur bei Mono
    -> rate(rate); - Legt die Abspielrate des Sounds fest (float), 1 ist Standard, 2 ist doppelte Geschwindigkeit
    -> stop(); - Stoppt das abspielen einer Sounddatei
  
  Soundfile(parent,dateiname); / Soundfile(parent,dateiname,cache); - Laedt eine Audiodatei
    ~ parent : normalerweise "this"
    ~ dateiname : Name / Pfad der Sounddatei
    ~ cache : bestimmt ob die Sounddaten im RAM bleiben wenn sie dekodiert wurden (Standard : true)
 
  ***** Sound Quelle (Satisfactory) : https://www.youtube.com/watch?v=67jNiQ6xhnU&t *****
*/
import processing.sound.*;
SoundFile file;

float lautstaerke, rate, l_min, l_max, cue;

void setup()
{
  // SETUP START
  file = new SoundFile(this,"TEST.wav");
  println("Sound Duration : " + file.duration());
  println("Sound Channels : " + file.channels());
  println("Sound Frames : " + file.frames());
  println("Sound isPlaying : " + file.isPlaying());
  lautstaerke = 1.0;
  l_min = 0.0;
  l_max = 1.0;
  cue = 0.0;
  // SETUP ENDE
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  background(125);
  // DRAW START

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
    file.play();
  } else if(key == 'a')
  {
    file.pause();
  } else if(key == 'y')
  {
    file.stop();
  } else if(key == 'w')
  {
    file.jump(-5.0);
  } else if(key == 's')
  {
    if(lautstaerke < l_max) lautstaerke += 0.1;
    println("Setze lautstaerke : " + lautstaerke);
  } else if(key == 'x')
  {
    if(lautstaerke > l_min) lautstaerke -= 0.1;
    println("Setze lautstaerke : " + lautstaerke);
  } else if(key == 'd')
  {
    rate += 0.1;
    println("Setze Geschwindigkeit : " + rate);
  } else if(key == 'c')
  {
    rate -= 0.1;
    println("Setze Geschwindigkeit : " + rate);
  } else if(key == 'f')
  {
    cue += 0.1;
    println("Setze Cue : " + cue);
  } else if(key == 'v')
  {
    cue -= 0.1;
    println("Setze Cue : " + cue);
  }
}
