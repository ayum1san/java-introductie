

void setup(){
  size(600,600);
}

void draw(){
  background(255,255,255);
  drawrightc(250,250,200,10);

}

void drawrightc( int x, int y, int sizec, int aantal){
  for ( int i = 0; i < aantal; i++){
  ellipse(x = sizec/2,y,sizec,sizec);
  sizec -= 20;
  }
}
