int jongste = 150;
int oudste = 0;
int[] leeftijden = {0,1,2,3,4,5,6,7,8,9,10};

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
