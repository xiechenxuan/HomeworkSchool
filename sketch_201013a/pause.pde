
void pause() {    
  background(255);
  fill(2);

  textFont(loadFont("BradleyHandITCTT-Bold.vlw"), 50);
  text("Set ball speed", 0, 50);
  rect(400, 10, 50, 50);
  rect(475, 10, 50, 50);
  if ((mouseX >= 400 && mouseX <= 400+50 && mouseY >= 10 && mouseY <= 10+50)) {
    xspeed = xspeed + 2;  
    yspeed = yspeed + 2;  
    fill(155);
    rect(400, 10, 50, 50);
  }
  if ((mouseX >= 475 && mouseX <= 475+50 && mouseY >= 10 && mouseY <= 10+50)) {
    xspeed = xspeed - 2;  
    yspeed = yspeed - 2;  

    if (yspeed < 0) {
      xspeed = 3;  
      yspeed = 2.7;
    }
    fill(155);
    rect(474, 10, 50, 50);
  }

  textFont(loadFont("BradleyHandITCTT-Bold.vlw"), 50);
  text("Set ball size", 0, 100);
  rect(400, 100, 50, 50);
  rect(475, 100, 50, 50);

  if ((mouseX >= 400 && mouseX <= 400+50 && mouseY >= 100 && mouseY <= 100+50)) {
    rad-= 10;
    fill(155);
    rect(400, 100, 50, 50);
  }
  if ((mouseX >= 475 && mouseX <= 475+50 && mouseY >= 100 && mouseY <= 100+50)) {
    rad+= 10;
  }
  if (rad <= 0) {
    rad = 10;
  }
  fill(155);
  rect(474, 100, 50, 50);
}


void keyReleased() {
  mode = GAME;
}
