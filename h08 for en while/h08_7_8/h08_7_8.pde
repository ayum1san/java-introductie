int antwoord = 0; 
int getallen = 0;
int getallen1 = 1; 

for(int i = 0; i < 10; i++){
  antwoord = getallen + getallen1 ;
  println(antwoord + "=" +getallen + "+" + getallen1);
  getallen = getallen1;
  getallen1 = antwoord;
}
