int seconden;
int aantalSpaties = 0;
int millisLeft = 0;
int leftAmount = 0;
boolean racing = true;

void setup(){
  size(600,600);
}

void draw(){
  background(0,0,0);
  
  seconden = millis()/1000;
  leftAmount = 10 - seconden;
  millisLeft = 1000 - (millis()%1000);
  
  if(leftAmount <= 0){
    leftAmount = 0;   
  }
 
  if(seconden >= 10){
    racing = false;
  }
  fill(255,255,255);
  text("Spaties: " + aantalSpaties, 200,200);
  text("Seconds left" + leftAmount, 200,220);
}

void keyReleased(){
  if(keyCode == 32 & racing){
    aantalSpaties++;
  }
}
