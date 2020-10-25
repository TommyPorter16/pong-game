void intro() {
  intro.play();
  
  background(yellow);
  
  reset();
  resetScore();
  
  
  //1 person start button
  tactileRect(100,500,200,100);
  strokeWeight(5);
  fill(255);
  rect(100,500,200,100);
  
  //1 person sign
  textSize(40);
  fill(0);
  text("1 PLAYER",200,540);
  
  //2 person start button
  tactileRect(500,500,200,100);
  strokeWeight(5);
  fill(255);
  rect(500,500,200,100);
  
  //2 person sign
  textSize(40);
  fill(0);
  text("2 PLAYER",600,540);
  
  //Pong sign
  textFont(robot);
  textSize(80);
  textAlign(CENTER,CENTER);
  fill(orange);
  text("PONG",400,300);
  
  //paddles for intro
  strokeWeight(2);
  stroke(0);
  fill(255);
  rect(200,100,10,50);
  rect(600,100,10,50);
  
  //ball for intro
  circle(400,125,20);
}

void introClicks() {
  //1player
  if (mouseX>100 && mouseX<300 && mouseY>500 && mouseY<600) {
    mode = GAME;
    AI=true;
    
  }
  //2player
    if (mouseX>500 && mouseX<700 && mouseY>500 && mouseY<600) {
    mode = GAME;
    AI=false;
    
  }
  
}
