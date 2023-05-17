/*
  
  Processing Tutorial
  Sketch Nr. 12
  Thema : Nutzereingaben
  
  Sketch Inhalte :
  
  key - Variable, die den Wert der zuletzt gedrueckten Taste beinhaltet, bsp 'a', '#', 'P', BACKSPACE, TAB, ENTER, RETURN, ESC, DELETE
  
  keyCode - Variable fuer spezielle Tasten wie UP, DOWN, LEFT, RIGHT, ALT, CONTROL und SHIFT
  
  keyPressed - Boolean Variable, keyPressed ist true wenn irgendeine Taste gedrueckt wird, ansonten false
  
  keyPressed(){} / keyPressed(event){} - Funktion, die immer aufgerufen wird wenn eine Taste gedrueckt wird; die gedrueckte Taste wird in key / keyCode gespeichert
  
  keyReleased(){} / keyReleased(event){} - Funktion, die immer aufgerufen wird wenn eine Taste losgelassen wird; die gedrueckte Taste wird in key / keyCode gespeichert 
  
  keyTyped(){} / keyTyped(event){} - Funktion, die immer aufgerufen wird wenn eine Taste gedrueckt wird; Tasten wie STRG, SHIFT und ALT werden hier ignoriert
  
  mousePressed - Boolean Variable, mousePressed ist true wenn irgendeine Maustaste gedrueckt wird, ansonten false
  
  mouseButton - Variable, die die zuletzt gedrueckte Maustaste speichert (LEFT, RIGHT, CENTER), wird keine Maustaste gedrueckt ist der Wert 0
  
  mouseX - Variable, die die aktuelle horizontale Position der Maus beinhaltet
  
  mouseY - Variable, die die aktuelle vertikale Position der Maus beinhaltet
  
  pmouseX - Variable, die die horizontale Position der Maus aus dem vorherigen Frame beinhaltet
  
  pmouseY - Variable, die die vertikale Position der Maus aus dem vorherigen Frame beinhaltet
  
  mousePressed(){} / mousePressed(event){} - Funktion, die immer aufgerufen wird wenn eine Maustaste gedrueckt wird
  
  mouseReleased(){} / mouseReleased(event){} - Funktion, die immer aufgerufen wird wenn eine Maustaste losgelassen wird
  
  mouseClicked(){} / mouseClicked(){event} - Funktion, die immer aufgerufen wird nachdem eine Maustaste gedrueckt und wieder losgelassen wurde
  
  mouseWheel(){} / mouseWheel(event){} - Funktion, die immer aufgerufen wird wenn das Mausrad bewegt wird
  
  mouseMoved(){} / mouseMoved(event){} - Funktion, die immer aufgerufen wird wenn die Maus bewegt wird, ohne dass eine Maustaste gedrueckt wird
  
  mouseDragged(){} / mouseDragged(event){} - Funktion, die immer aufgerufen wird wenn die Maus bewegt wird, waehrend eine Maustaste gedrueckt wird
   
  exit(); - Beendet das Programm
  
  noLoop(); - Stoppt Processing draw() weiterhin im loop auszufuehren
  
  loop(); - Setzt die kontinuirlische Ausfuehrung von draw() fort
  
*/

float x,y,size,speed;

void setup()
{
  // SETUP START
  size(1000,1000);
  x = width / 2;
  y = height / 2;
  size = 100.0;
  speed = 2.75;
  // SETUP ENDE
}

void draw()
{
  // DRAW START
  if(mousePressed){
    background(#32B4BE);
  } else {
    background(125);
  }
 
  if(keyPressed){
    if(key == 'W' || key == 'w'){
      y -= speed;
    } else if(key == 'S' || key == 's'){
      y += speed; 
    } else if(key == 'A' || key == 'a'){
      x -= speed;
    } else if(key == 'D' || key == 'd'){
      x += speed;
    }
    
    if(keyCode == CONTROL){
      exit();
    }
      
  }
 
  fill(255,0,255);
  circle(x,y,size);
  
  strokeWeight(5);
  stroke(255,0,0);
  line(mouseX,mouseY,pmouseX,pmouseY);
  
  strokeWeight(1);
  stroke(0);
  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  //line(0, mouseY, width, mouseY);
  //line(mouseX, 0, mouseX, height);
  //println(mouseX + " | " + mouseY);
}

void keyPressed(){
  println("A KEY GOT PRESSED");
  
  if(keyCode == UP){
    loop();
  } else if(keyCode == DOWN){
    noLoop();
  }
}

void keyTyped(){
  println("A KEY WAS TYPED");
}

void keyReleased(){
  println("A KEY GOT RELEASED");
}

void mousePressed(){
  println("A MOUSEBUTTON WAS PRESSED");
}

void mouseReleased(){
  println("A MOUSEBUTTON WAS RELEASED");
}

void mouseClicked(){
  println("A MOUSEBUTTON GOT CLICKED");
}

void mouseWheel(MouseEvent event){
  println("MOUSEWHEEL");
  if(event.getCount() == -1){
    size += 5;
  } else {
    size -= 5;
  }
}

void mouseMoved()
{
  println("THE MOUSE WAS MOVED");
}

void mouseDragged(MouseEvent event){
  println("THE MOUSE WAS DRAGGED");
  int mX = event.getX();
  int mY = event.getY();
  
  strokeWeight(5);
  
  line(0,0,mX,mY);
  line(width,0,mX,mY);
  line(0,height,mX,mY);
  line(width,height,mX,mY);
  
  println("Maustaste : " + mouseButton);
  
  strokeWeight(1);
}
