
void intro() {
  fill(244);
  ani();
  fill(255);
  textFont(loadFont("BradleyHandITCTT-Bold.vlw"), 40);
  text("PRESS ANYWHERE TO START", 100, 600);
  if ((mousePressed == true)) {
    mode = GAME;
  }
}

void ani() {
  if (mode==INTRO) {
    float x = random(width);
    float y = random(height);
    textFont(loadFont("BradleyHandITCTT-Bold.vlw"), 10);
    fill(random(0, 255), random(0, 255), random(0, 255));
    text("clicker", x, y);
  }
}
