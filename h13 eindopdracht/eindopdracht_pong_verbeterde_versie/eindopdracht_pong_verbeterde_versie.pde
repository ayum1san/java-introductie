int balx, baly;
int speed=10;
int x=speed;
int y=speed;
int paddlex, paddley;
boolean baloutofbounds;

void setup() {
  size(1000, 800);
  background(0);
  frameRate(60);
}


void draw() {
  drawscreen();
  drawpaddle();
  if (!baloutofbounds) {
    drawball();
  }

  if (baloutofbounds) {
    //println("verloren");

    fill(133, 98, 13);
    textSize(128);
    text("VERLOREN!!", 185, 420);
    if (keyPressed) {
      if (key == 'r') {
        println("probeer opnieuw");
        baly= 20;
        balx= 20;
        baloutofbounds = false;
      }
    }
  }
}


void drawscreen() {
  background(0);
  for (int i=0; i<height; i+=30) {
    rect(width/2, i, 10, 10);
  }
}

void drawpaddle() {
  paddlex = 900;
  paddley = mouseY;
  rect(paddlex, paddley, 20, 100);
}

void drawball() {
  fill(153, 50, 204);
  balx=balx+x;
  baly=baly+y;
  baloutofbounds = balx > 999;
  if (balx >= 900 && baly > paddley && baly < paddley + 100) {
    x=-x;
  }
  if (balx<0) x=-x;
  if (baly<0 || baly>799) y=-y;

  if (balx<0) balx=0;
  if (balx>1000) balx=1000;
  if (baly<0) baly=0;
  if (baly>800) baly=800;
  circle(balx, baly, 20);
}
