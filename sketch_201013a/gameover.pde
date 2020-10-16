
public void gameover() {    
  if (mode==GAMEOVER) {
    background(1);    
    float x = random(width);
    float y = random(height);
    textFont(loadFont("BradleyHandITCTT-Bold.vlw"), 100);
    fill(255);
    text("YOU WIN", x, y);
    if ((mousePressed == true)) {
      mode = INTRO;
      background(1);
      fill(255);
      textFont(loadFont("BradleyHandITCTT-Bold.vlw"), 40);
      text("PRESS ANYWHERE TO RESTART", 100, 600);
      background(2);
      if ((mousePressed == true)) {
        mode = INTRO;
      }
    }
  }
}
