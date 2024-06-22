int squareSize = 5; 
int speed = 5;
int numSquares = 50; 
int[] x = new int[numSquares]; 
int[] y = new int[numSquares]; 
int[] directionX = new int[numSquares]; 
int[] directionY = new int[numSquares]; 
float changeDirectionProbability = 0.1; 

void setup() {
  size(500, 500); 
  
  for (int i = 0; i < numSquares; i++) {
    x[i] = int(random(width/squareSize))*squareSize; 
    y[i] = int(random(height/squareSize))*squareSize; 
    directionX[i] = int(random(3)) - 1; 
    directionY[i] = int(random(3)) - 1; 
  }
  
  for (int i = 0; i < width; i += squareSize) {
    for (int j = 0; j < height; j += squareSize) {
      fill(255); 
      rect(i, j, squareSize, squareSize); 
    }
  }
  
  frameRate(10);
}

void draw() {
 
  fill(0); 
  stroke(255);
  for (int i = 0; i < numSquares; i++) {
    rect(x[i], y[i], squareSize, squareSize); 
  }
  
  for (int i = 0; i < numSquares; i++) {
    if (random(1) < changeDirectionProbability) {
      directionX[i] = int(random(3)) - 1; 
      directionY[i] = int(random(3)) - 1; 
    }
    

    x[i] += speed * directionX[i];
    y[i] += speed * directionY[i]; 
    

    if (x[i] <= 0 || x[i] >= width - squareSize) {
      directionX[i] *= -1; 
    }
    if (y[i] <= 0 || y[i] >= height - squareSize) {
      directionY[i] *= -1; 
    }
  }
}
