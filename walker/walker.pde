class Walker {
  int x;
  int y;
  int w;
  int h;
  int stepX;
  int stepY;
  
  Walker(int w, int h, int stepX, int stepY) {
    this.w = w;
    this.h = h;
    this.stepX = stepX;
    this.stepY = stepY;
    x = 0;
    y = 0;
  }
  
  void display() {
    noStroke();
    fill(random(255), random(255), random(255));
    int fluctX = int(random(int(0.5*stepX)));
    int fluctY = int(random(int(0.5*stepY)));
    ellipse(x, y, int(0.8*stepX) - fluctX, int(0.8*stepY) - fluctY);
  }
  
  void step() {
    int choice = int(random(4));
    if (choice == 0) {
      x += stepX;
    } else if (choice == 1) {
      x -= stepX;
    } else if (choice == 2) {
      y += stepY;
    } else {
      y -= stepY;
    }
    
    if (x < 0) {
      x = 0;
    }
    if (x > w) {
      x = w;
    }
    
    if (y < 0) {
      y = 0;
    }
    if (y > h) {
      y = h;
    }
  }
}

Walker w;

void setup() {
  size(640, 360);
  background(0);
  w = new Walker(640, 360, 40, 40);
}

void draw() {
  w.step();
  w.display();
}
