int balx, baly;
int speed=10;
int x=speed;
int y=speed;
int paddlex, paddley;

void setup(){
  size(1000,800);
  background(0);

}

void draw(){
 drawscreen();
 drawpaddle();
 drawball();
}

void drawscreen(){
   background(0);
   for(int i=0;i<height;i+=30) {
     rect(width/2,i,10,10);
   }
}

void drawpaddle(){
  paddlex = 900;
  paddley = mouseY;
  rect(paddlex,paddley,20,100);
}

void drawball(){
  fill(153,50,204);
  balx=balx+x;
  baly=baly+y;
  if(balx >= 900 && baly > paddley && baly < paddley + 100){
    x=-x;
  }
  if(balx<0) x=-x;
  if(baly<0 || baly>799) y=-y;
  if(balx > 999){
    println("verloren");
    fill(0,0,0);
    textSize(128);
    text("VERLOREN!!",185,420);
  }
  if(balx<0) balx=0;
  if(balx>1000) balx=1000;
  if(baly<0) baly=0;
  if(baly>800) baly=800;
  circle(balx, baly, 20);
}
