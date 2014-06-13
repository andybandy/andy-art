int w = 1900;
int h = 1024;

int squareSize = 16;
int amountX = w/squareSize;
int amountY = h/squareSize;
int amountOfSquares = amountX*amountY;
Square[] squares;

void setup() {
  size(w, h);
  noStroke();
  squares = new Square[amountOfSquares];
  for (int i = 0; i < amountX*amountY; i++) {
    squares[i] = new Square(i%amountX*squareSize, i/amountY*squareSize, squareSize);
  }
}

void draw() {
  background(0);

  // Squares
  for (int i = 0; i < amountOfSquares; i++) {
    squares[i].update();
    squares[i].draw();
  }
}
