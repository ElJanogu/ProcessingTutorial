/*
  
  Processing Tutorial
  Sketch Nr. 28
  Thema : Threads
  
  Sketch Inhalte :
  
  thread(funktion); - Fuehrt eine Funktion in einem separatem Thread aus
    ~ funktion : Funktion die ausgefuert werden soll
  
*/
boolean done1, done2;
long num1, num2;
void setup()
{
  done1 = false;
  done2 = false;
  printMillarden();
  printMillionen();
  
  //thread("printMillarden");
  //thread("printMillionen");
}

void draw()
{
  // NICHT TEIL DES TUTORIALS
  background(125);
  // DRAW START
  if(done1)
  {
    println("Millionen fertig : " + num1);
    done1 = false;
  }
  if(done2)
  {
    println("Tausende fertig : " + num2);
    done2 = false;
  }
  // DRAW ENDE
  // NICHT TEIL DES TUTORIALS
  line(0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);
  //println(mouseX + " | " + mouseY);
}

void printMillarden()
{
  long limit = 1000000000;
  for(int index = 0; index < limit; index++)
  {
    print("");
  }
  num1 = millis();
  done1 = true;
}

void printMillionen()
{
  int limit = 100000000;
  for(int index = 0; index < limit; index++)
  {
    print("");
  }
  num2 = millis();
  done2 = true;
}
