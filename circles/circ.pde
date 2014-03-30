class Circ {
  float x, y;
  float xTop, yTop;
  float r;
  int fillColor;
  float localTime;

  Circ (float x, float y, float r) {
    this.xTop = x;
    this.yTop = y;
    this.r = r;
    this.x = random(0, x);
    this.y = random(0, y);
    this.fillColor = round(random(10, 245));
    this.localTime = random(TWO_PI);
  }

  void update() {
    localTime += 0.01;
    x += 0.7;
    y += 0.7*sin(localTime);
    if (x > width) {
      x = 0;
    }
  }

  void draw() {
    noStroke();
    fill(fillColor);
    ellipse(this.x, this.y, this.r, this.r);
  }
}
