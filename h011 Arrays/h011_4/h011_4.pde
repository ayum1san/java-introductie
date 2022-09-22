int jongste = 150;
int oudste = 0;
int[] leeftijden = {12,24,36,48,60,72,84,96,108,120,132};

void setup(){
  for(int i = 0; i < leeftijden.length; i++){
    if(oudste < leeftijden[i]){
      oudste = leeftijden[i];
      println(oudste);
    }
    if(jongste > leeftijden[i]){
      jongste = leeftijden[i];
      println(jongste);
    }
  }
  println("jongste is" + jongste);
  println("oudste is" + oudste);
}
