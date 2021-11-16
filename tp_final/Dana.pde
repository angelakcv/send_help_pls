class Dana {
  //Escenario minijuego;
  //Dana d;

  //PROPIEDADES >variables
  float x, y, t;

  Dana (float x_, float y_, float t_) {
    x = x_;
    y = y_;
    t = t_;
  }

  //MÉTODOS (funciones)


  void draw() { //void dibujar
    pushStyle();

    //Varita
    strokeWeight(t/30);
    stroke (117, 117, 117);
    line(x+t/3.7, y+t/17, x+t/3, y-t/7);

    noStroke();
    //Luz
    fill(5, 252, 234, 117);
    circle(x+t/3, y-t/7, t/10);
    //Cabeza
    fill(47, 47, 100);
    circle(x, y-t/7, t/3.5);
    //Piel
    fill(250, 233, 207);
    circle(x-t/5, y+t/7, t/20);
    circle(x+t/3.7, y+t/17, t/20);
    //Zapatos
    fill(33, 34, 137);
    circle(x-t/13, y+t/3, t/20);
    circle(x+t/13, y+t/3, t/20);
    //Capa
    fill (33, 34, 137);
    quad(x-t/10, y, x+t/10, y, x+t/5, y+t/5, x-t/5, y+t/5);
    //Brazo1
    fill (117, 117, 117);
    quad(x-t/10, y, x-t/10, y, x-t/6, y+t/7, x-t/5, y+t/10);
    //Brazo2
    fill (117, 117, 117);
    quad(x+t/8, y+t/15, x+t/10, y, x+t/4, y+t/30, x+t/4, y+t/7);
    //Pierna1
    fill (117, 117, 117);
    quad(x-t/10, y+t/5, x-t/40, y+t/5, x-t/20, y+t/3, x-t/10, y+t/3);
    //Pierna2
    fill (117, 117, 117);
    quad(x+t/40, y+t/5, x+t/10, y+t/5, x+t/10, y+t/3, x+t/20, y+t/3);
    //Colita
    strokeWeight(2);
    stroke(0, 0, 70);
    fill(47, 47, 100);
    curve(x-t/1.07, y+t/1.07, x, y-t/10, x, y-t/10, x+t/1.07, y+t/1.07);

    popStyle();
  }


  void moverI() {
    if (keyCode == LEFT)
      x -= 20;
  }

  void moverD() {
    if (keyCode == RIGHT)
      x +=20;
  }
}
