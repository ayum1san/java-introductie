size(200,200);
background(255,255,255);

int sizeC = 10;

for(int i = 0; i < 6; i++){
  ellipse(10 - sizeC/2, 20 - sizeC/2, sizeC,sizeC);
  sizeC-=60;
}
