import controlP5.*;

ControlP5 cp;

Button knop1;
Button knop2;


void setup(){
  size(600,600);
background(0,0,0);

cp = new ControlP5(this);

knop1 = cp.addButton("knop1")
          .setPosition(300,300)
          .setSize(200,200)
          .setCaptionLabel("klik mij");
knop2 = cp.addButton("knop2")
          .setPosition(100,150)
          .setSize(200,200)
          .setCaptionLabel("klik mij");
cp.getController("knop2").setColorForeground(color(255,0,0));

}

void draw(){
  background(255,0,255);
}

void knop1(){
  println("helaas fout!");
  background(255,0,0);
}

void knop2(){ 
println("goed gedaan!!");
}
