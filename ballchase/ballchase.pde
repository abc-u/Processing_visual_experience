int x = 255;
int y = 0;
int z = 10;
int s = 500;
int t = 500;
float speed = 1.0;
float defaultSpeed = 1.0;
float fastSpeed = 5.0;
boolean gameOver = false;
boolean gameStarted = false;
boolean transitioningToWhite = false;
int transitionFrameCount = 0;
int transitionDuration = 60; // フレーム数での遷移時間
int blackBackgroundDuration = 20; // 黒背景のフレーム数
int blackBackgroundFrameCount = 0;

void setup() {
  frameRate(20);
  size(1000, 1000);
}

void draw() {
  if (!gameStarted) {
    background(0);
    fill(255);
    textSize(32);
    textAlign(CENTER, CENTER);
    text("Press SPACE to Start", width / 2, height / 2);
  } else if (!gameOver) {
    if (transitioningToWhite) {
      float transitionProgress = (float)transitionFrameCount / transitionDuration;
      x = int(255 * transitionProgress);
      transitionFrameCount++;
      if (transitionFrameCount >= transitionDuration) {
        transitioningToWhite = false;
        x = 255;
      }
    } else if (blackBackgroundFrameCount < blackBackgroundDuration) {
      x = 0;
      blackBackgroundFrameCount++;
      speed = fastSpeed;
    } else {
      x = (x - 1) % 510;
      if (x < 0) x = 0;
      if (x == 0) {
        transitioningToWhite = true;
        transitionFrameCount = 0;
        blackBackgroundFrameCount = 0;
      } else {
        speed = defaultSpeed;
      }
    }

    background(x);
    fill(y);
    ellipse(s, t, 100, 100);

    fill(255, 0, 0);
    ellipse(mouseX, mouseY, 50, 50);

    if (s > mouseX) {
      s -= speed;
    }
    if (s < mouseX) {
      s += speed;
    }
    if (t > mouseY) {
      t -= speed;
    }
    if (t < mouseY) {
      t += speed;
    }
    
    float distance = dist(mouseX, mouseY, s, t);
    if (distance < 75) {
      gameOver = true;
    }
  } else {
    background(0);
    fill(255);
    textSize(32);
    textAlign(CENTER, CENTER);
    text("Game Over. Press SPACE to Restart", width / 2, height / 2);
  }
}

void keyPressed() {
  if (key == ' ') {
    if (gameOver) {
      resetGame();
    }
    gameStarted = true;
  }
}

void resetGame() {
  x = 255;
  s = 500;
  t = 500;
  speed = defaultSpeed;
  gameOver = false;
  transitioningToWhite = false;
  transitionFrameCount = 0;
  blackBackgroundFrameCount = 0;
}
