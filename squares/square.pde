class Square {
  float x, y;
  float s;
  int fillColor;
  Square (float x, float y, float s) {
    this.x = x;
    this.y = y;
    this.s = s;
    this.fillColor = 100;
  }

  void update() {
    fillColor = fillColor + round(random(-15, 15));
    if (fillColor > 150) {
      fillColor = 150;
    } else if (fillColor < 20) {
      fillColor = 20;
    }
  }

  void draw() {
    stroke(100);
    fill(fillColor);
    rect(x, y, s, s);
  }
}
