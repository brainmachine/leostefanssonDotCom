float c;
float p;
float d; 
float a;

void setup() {
  size (window.innerWidth, window.innerHeight);
  c = 0.00;
  p = 0.03;
  d = 0.07;
  stroke(255, 255, 255, 12);
  background(0,0,0);
}

void draw() {
  translate(720,450);
 doStuff();
frameRate(120); 
}

void doStuff() {
  c += 0.1; 
  p += 0.7;
  d += 0.13;
  a += 0.21;
  //stroke(sin(c*d)*255, sin(d*p)*255, sin(p*c)*255, 50);
  float x1 = cos(c)*height/3;
  float y1 = sin(c)*height/3;
  float x2 = x1-sin(c)*height/2;
  float y2 = y1-sin(p*a)*height/2;
  line(x1,y1,x2,y2);
}