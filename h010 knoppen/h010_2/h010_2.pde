import controlP5.*;
int mijnGetal;
String mijnString;
ControlP5 cp;

Textfield TF1;
Button knop1;

void setup(){
  size(600,600);
background(0,0,0);

cp = new ControlP5(this);

TF1 = cp.addTextfield("TextField1")
    .setText("hoi mijn naam is")
    .setSize(600,600)
    .setCaptionLabel("");
TF1.setAutoClear(false);
knop1 = cp.addButton("knop1") 
    .setCaptionLabel("welkom");
    
}

void draw(){
  background(255,0,255);
}

void knop1(){
  mijnString = TF1.getText();
  mijnGetal = int(mijnString);
  println(mijnGetal);
  
}
