float x, y;
int rad = 60;       

float xspeed = 3;  
float yspeed = 2.7;  
int xdirection = 1;  
int ydirection = 1;  

int score = 0;


void game() {
  background(102);
  textFont(loadFont("BradleyHandITCTT-Bold.vlw"), 400);
  text(score, 0, 800);

  x = x + ( xspeed * xdirection );
  y = y + ( yspeed * ydirection );
  if (x > width-rad || x < rad) {
    xdirection *= -1;
  }
  if (y > height-rad || y < rad) {
    ydirection *= -1;
  }
  ellipse(x, y, rad, rad);
}


void mouseClicked() {
  if ((mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height)) {
    score++;
  }
  if (score >= 50) {
    mode = GAMEOVER;
  }
}

void keyPressed() {
  mode = PAUSE;
}
