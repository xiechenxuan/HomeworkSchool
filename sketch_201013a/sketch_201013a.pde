final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 3;
final int MOUSE = 4;
final int PAUSE = 5;
int mode;

void setup() {
  size(800, 800); 
  noStroke();
  mode = INTRO;
  background(1);
  ellipseMode(RADIUS);

  x = width/2;
  y = height/2;
}
void draw() {
  if (mode == INTRO) {
    intro();
  }
  if (mode == GAME) {
    game();
  }  
  if (mode == GAMEOVER) {
    gameover();
  }
  if (mode == PAUSE) {
    pause();
  }
}
