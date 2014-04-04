/* @pjs preload = "corner.jpg" */
PImage img;
int amountOfCircles = 0;
int counter = 0;
Circle circles[];

int rMin = 1;
int rMax = 30;
float r = 10;

void setup() {
  img = loadImage("corner.jpg");
  size(img.width, img.height);
}

void draw() {
  r = map(mouseX, 0, width, rMin, rMax);
  amountOfCircles = floor(width/r)*floor(height/r);
  circles = new Circle[amountOfCircles];
  img.loadPixels();
  counter = 0;
  int y = 0;
  while (y < img.height) {
    int x = 0;
    while (x < img.width) {
      int pos = y*img.width + x;
      color c = color(img.pixels[pos]);
      circles[counter] = new Circle(x + r, y + r, r, c);
      counter++;
      x += 2*r;
    }
    y += 2*r;
  }

  background(0);
  if (counter > 0) {
    for (int i = 0; i < counter; i++) {
      circles[i].draw();
    }
  }
}

class Circle {
  float x, y, r;
  color c;

  Circle(float x, float y, float r, color c) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.c = c;
  }

  void draw() {
    noStroke();
    fill(c);
    ellipse(x, y, r, r);
  }
}
