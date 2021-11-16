class Fuego {

  //Escenario minijuego;
  Fuego f1,f2,f3,f4,f5;

  //PROPIEDADES >variables
  float x, y, t;
  float vel;

  Fuego (float x_, float y_, float t_) {
    x = x_;
    y = y_;
    t = t_;
    vel = random (5, 7);
  }

  //MÉTODOS (funciones)
  void update () {
    y += vel;
    reciclar();
  }

  void draw() { //void dibujar
    // pushStyle();
    noStroke();

    //ROJO
    fill(255, 0, 0);
    rect(x, y-t/1.8, t/10, t/10);
    rect(x-t/10, y-t/2.1, t/10, t/10);
    rect(x+t/10, y-t/2.1, t/10, t/10);

    rect(x-t/5, y-t/2.6, t/10, t/10);
    rect(x+t/5, y-t/2.6, t/10, t/10);

    rect(x-t/2.6, y-t/2.6, t/10, t/10);
    rect(x-t/3.4, y-t/3.4, t/10, t/10);
    rect(x+t/3.4, y-t/3.4, t/10, t/10);
    rect(x+t/3.4, y-t/5, t/10, t/10);

    rect(x-t/2.1, y-t/3.4, t/10, t/5);
    rect(x-t/2.1, y-t/10, t/10, t/10);
    rect(x-t/2.6, y, t/10, t/10);

    rect(x-t/2.1, y+t/10, t/10, t/5);
    rect(x-t/2.1, y+t/3.4, t/10, t/10);

    rect(x-t/2.6, y+t/2.6, t/10, t/10);
    rect(x-t/2.6, y+t/2.1, t/5, t/10);

    rect(x+t/2.6, y-t/10, t/10, t/10);
    rect(x+t/2.1, y-t/5, t/10, t/5);
    rect(x+t/2.1, y, t/10, t/5);
    rect(x+t/2.1, y+t/5, t/10, t/5);

    rect(x+t/2.6, y+t/2.6, t/10, t/10);
    rect(x+t/2.6, y+t/2.1, t/10, t/10);
    rect(x+t/3.4, y+t/2.1, t/10, t/10);

    rect(x-t/5, y+t/1.8, t/5, t/10);
    rect(x, y+t/1.8, t/10, t/10);
    rect(x+t/10, y+t/1.8, t/5, t/10);

    //ANARANJADO
    fill(255, 145, 0);
    rect(x, y-t/2.1, t/10, t/10);
    rect(x-t/10, y-t/2.6, t/5, t/10);
    rect(x+t/10, y-t/2.6, t/10, t/10);

    rect(x-t/5, y-t/3.4, t/5, t/10);
    rect(x+t/10, y-t/3.4, t/5, t/10);
    rect(x-t/2.6, y-t/3.4, t/10, t/5);
    rect(x-t/2.6, y-t/10, t/10, t/10);
    rect(x-t/3.4, y-t/5, t/10, t/5);
    rect(x-t/5, y-t/5, t/10, t/5);
    rect(x+t/5, y-t/5, t/10, t/5);

    rect(x+t/3.4, y-t/10, t/10, t/5);
    rect(x+t/3.4, y+t/10, t/10, t/5);
    rect(x+t/3.4, y+t/3.4, t/10, t/5);
    rect(x+t/2.6, y, t/10, t/5);
    rect(x+t/2.6, y+t/5, t/10, t/5);

    rect(x-t/3.4, y, t/10, t/10);
    rect(x-t/2.6, y+t/10, t/5, t/10);
    rect(x-t/2.6, y+t/5, t/5, t/10);
    rect(x-t/2.6, y+t/3.4, t/5, t/10);
    rect(x-t/3.4, y+t/2.6, t/10, t/10);

    rect(x-t/5, y+t/2.1, t/5, t/10);
    rect(x, y+t/2.1, t/10, t/10);
    rect(x+t/10, y+t/2.1, t/5, t/10);

    //AMARILLO
    fill(255, 217, 0);
    rect(x, y-t/3.4, t/10, t/10);
    rect(x-t/10, y-t/5, t/10, t/5);
    rect(x, y-t/5, t/10, t/5);
    rect(x+t/10, y-t/5, t/10, t/5);

    rect(x-t/5, y, t/10, t/5);
    rect(x-t/10, y, t/10, t/5);
    rect(x, y, t/10, t/5);
    rect(x+t/10, y, t/10, t/5);
    rect(x+t/5, y, t/10, t/5);

    rect(x-t/5, y+t/5, t/10, t/5);
    rect(x-t/10, y+t/5, t/10, t/5);
    rect(x, y+t/5, t/10, t/5);
    rect(x+t/10, y+t/5, t/10, t/5);
    rect(x+t/5, y+t/5, t/10, t/5);

    rect(x-t/5, y+t/2.6, t/5, t/10);
    rect(x, y+t/2.6, t/10, t/10);
    rect(x+t/10, y+t/2.6, t/5, t/10);

    //  popStyle();
  }

  //void enemigo ()

  void reciclar () {
    if (y > height+100) {
      x = random (width);
      y = -100;
      t = 30;
      vel = random (5, 7);
    }
  }
}
