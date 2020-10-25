void gameover() {
  clapping.play();
  
  reset();
  
  
  textFont(robot);
  textSize(80);
  textAlign(CENTER,CENTER);
  fill(0);

  if (leftscore>rightscore) {
    //gameover sign
  textFont(robot);
  textSize(80);
  textAlign(CENTER,CENTER);
  fill(0);
  text("LEFT PLAYER",400,300);
  text("WINS",400,400);
  } else {
  text("RIGHT PLAYER",400,300);
  text("WINS",400,400);
  }
 
}

void gameoverClicks() {
  mode = INTRO;
}
