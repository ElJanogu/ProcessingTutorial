/*
  
  Processing Tutorial
  Sketch Nr. 14
  Thema : Frames
  
  Sketch Inhalte :
  
  frameRate - Variable, die die aktuelle Framrate speichert, der Wert wird alle 5-10 Frames aktuallisiert
  
  frameCound - variable, die die Anzahl an Frames beinhaltet die seit Programmstart bereits gezeichnet wurden
  
  frameRate(FPS); - Setzt die FrameRate die das Programm (versuchen soll) zu erreichen, 1 Frame = 1 draw() aufruf
    ~ FPS : Ziel-Framerate, Standard : 60
  
  redraw(); - Fuehrt draw() ein einziges mal auf

*/

void setup()
{
  // SETUP START
  size(500,500);
  // SETUP ENDE
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  background(125);
  // DRAW START
  
  stroke(255,0,0);
  strokeWeight(10);
  point(mouseX,mouseY);
  
  
  println("Frames : " + frameCount + " | FrameRate : " + frameRate);
  
  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  stroke(0);
  strokeWeight(1);
  line(0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);
  //println(mouseX + " | " + mouseY);

}

void keyPressed()
{
  if(key == 'q')
  {
    frameRate((int)frameRate+10);
  } else if(key == 'w')
  {
    frameRate((int)frameRate-10);
  } else if(key == 'a')
  {
    loop();
  } else if(key == 's')
  {
    noLoop();
  } else if(key == 'y')
  {
    redraw();
  }
}
