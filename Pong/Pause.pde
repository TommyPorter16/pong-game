void pause() {
  textFont(robot);
  textSize(100);
  textAlign(CENTER,CENTER);
  fill(0);
  text("PAUSE",400,400);
}

void pauseClicks() {
  mode=GAME;
}
