float t = 0;
float randTime = 1;
float randDelta = 0.005;

void setup() {
  size(640, 360);
  background(0);
}

void draw() {
  loadPixels();
  randTime = random(10);
  randDelta = random(0.01);
  float xoff = randTime;
  for (int x = 0; x < width; x++) {
    float yoff = randTime;
    for (int y = 0; y < height; y++) {
      noiseDetail(4, random(0.5));
      float bright = map(noise(xoff, yoff), 0, 1, 0, 255);
      pixels[x + y*width] = color(bright);
      yoff += 2*randDelta;
    }
    xoff += randDelta;
  }
  updatePixels();
}
