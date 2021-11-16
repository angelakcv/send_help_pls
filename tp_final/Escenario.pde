class Escenario {


  ////PROPIEDADES > variables
  PImage [] Fon = new PImage [9];
  PFont font2;
  float x, y, tx, ty;
  int Pantalla;

  //CONSTRUCTOR > setup de la clase
  Escenario (float x, float y, float tx, float ty) {
    for (int i=0; i<Fon.length; i++) {
      Fon[i] = loadImage ("fon_0" + i + ".png");
    }

    font2 = loadFont ("VCROSDMono-48.vlw");

    Pantalla = 0;
  }
  //MÉTODOS > funciones
  void dibujar() {
    image(Fon[0], 0, 0, 800, 400);
  }
  void draw () {
    if (Pantalla == 0) {
      image(Fon[0], 0, 0, 800, 400);
      //Dialogo0;
      //Boton0;
    } else if (Pantalla==1) {
      image(Fon[1], 0, 0, 800, 400);
      //Dialogo1;
      //Boton1;
     } else if (Pantalla==2) {
      image(Fon[2], 0, 0, 800, 400);
      //Dialogo1;
      //Boton1;
     } else if (Pantalla==3) {
      image(Fon[3], 0, 0, 800, 400);
      //Dialogo1;
      //Boton1;
    }
  }
}
