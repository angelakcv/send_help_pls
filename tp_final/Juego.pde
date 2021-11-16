class Juego {

  //PROPIEDADES > variables
  int estado;
  Dana d;
  Fuego f1, f2, f3, f4, f5;
  Escenario pantalla;

  //CONSTRUCTOR > setup

  Juego() {
    d = new Dana(width/2, 300, 100);
    f1 = new Fuego(width/2, -100, 30);
    f2 = new Fuego(100, -170, 30);
    f3 = new Fuego(250, -250, 30);
    f4 = new Fuego(540, -310, 30);
    f5 = new Fuego(770, -370, 30);

    pantalla = new Escenario(0, 0, 800, 40);
  }

  //MÉTODOS > funciones
  void actualizar (){
    pantalla.actualizar();
    //d.colision
    f1.update();
    f2.update();
    f3.update();
    f4.update();
    f5.update();
  }
  
  void dibujar () {
    pantalla.draw(d, f1, f2, f3, f4, f5);
    d.d(pantalla);
    f1.f1(pantalla);
  }
}
