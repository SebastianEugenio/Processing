

float margenIzq;
float margenDer;
float margenSup;
float margenInf;
float tam=50;
float w, h;





pelota pelota1= new pelota(300); 

pelota pelota2= new pelota(100); 

pelota pelota3= new pelota(200); 



void setup() {


  surface.setResizable(true);
  background(255);

  size(800, 600);

  w=width;
  h=height;
}


void draw() {

  setearMargenes();
  
  background(255);

  pelota1.update();
  pelota2.update();
  pelota3.update();
  
}




void setearMargenes()
{ 
  margenIzq=tam/2;
  margenDer=width-(tam/2);
  margenSup=tam/2;
  margenInf=height-(tam/2);
}

class pelota {



  float x, y;
  float velx, vely;
  float vel;
  float centroX;
  float centroY;
  float radio=200;

  float angulo;

  pelota(float _vel)
  {
    vel=_vel;
    
  }

  void update() {

    angulo=angulo+(TWO_PI/vel);

    x=cos(angulo)*radio+w/2;
    y=sin(angulo)*radio+h/2;

    ellipse(x, y, tam, tam);

    fill(240, 0, 0);
  }
}