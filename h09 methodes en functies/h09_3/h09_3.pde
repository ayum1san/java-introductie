int mijngetal;

void setup(){
  mijngetal = mijnMethode(15, 3);
  println(mijngetal);
}

void draw(){
  
}

int mijnMethode(int getal, int getaltwee){
  int totaal = getal / getaltwee;
  return totaal;
}
