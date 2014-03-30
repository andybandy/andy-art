int w = 640;
int h = 480;

int amountOfCircles = 20;
Circ[] circs;

void setup() {
  size(w, h);
  noStroke();
  circs = new Circ[amountOfCircles];
  for (int i = 0; i < amountOfCircles; i++) {
    circs[i] = new Circ(width, height, random(5, 20));
  }
}

void draw() {
  background(0);

  // Cirles
  for (int i = 0; i < amountOfCircles; i++) {
    circs[i].update();
    circs[i].draw();
  }
}
