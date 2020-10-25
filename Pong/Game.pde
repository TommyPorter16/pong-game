void game() {
  background(jeans);
  
  //paddles
  strokeWeight(4);
  stroke(0);
  fill(blue);
  circle(leftx,lefty,leftd);
  fill(space);
  circle(rightx,righty,rightd);
  
  //move paddles
  if (wkey == true) righty = righty -5;
  if (skey == true) righty = righty +5;
  
  if (AI==false) {
   if(upkey==true) lefty=lefty-5;
   if(downkey==true) lefty=lefty+5;
  } else {
    if(ballx>400) {
    if (bally>lefty) {
      lefty=lefty+5;
    }
    if (bally<lefty) {
      lefty=lefty-5;
    }
  }
  }
  //ball
  fill(255);
  circle(ballx,bally,balld);
  
  //move ball
  if (timer<0) {
  ballx = ballx + vballx;
  bally = bally + vbally;
  }
  
  //distances between shapes
  rd=dist(rightx,righty,ballx,bally);
  ld=dist(leftx,lefty,ballx,bally);
  
  
  //scoreboard
  textSize(50);
  fill(0);
  text(rightscore,650,100);
  fill(0);
  text(leftscore,150,100);
  //text(timer,650,700);
  timer = timer-1;
  
  //scoring
  if(ballx<-25) {
    rightscore++;
    reset();
    score.rewind();
    score.play();
  }
  
  if(ballx>825) {
    leftscore++;
    reset();
    score.rewind();
    score.play();
  }
  //bouncing
  if (bally>width-balld/2 || bally<balld/2) {
    vbally = vbally*-1;
    wall.rewind();
    wall.play();
  }
  
  //bouncing into the paddles
  if (rd<=rr+br) {
    vballx=(ballx-rightx)/25;
    vbally=(bally-righty)/25;
    rightpaddle.rewind();
    rightpaddle.play();
  }
  
  if (ld<=lr+br) {
    vballx=(ballx-leftx)/25;
    vbally=(bally-lefty)/25;
    leftpaddle.rewind();
    leftpaddle.play();
  }
  
  //paddle limits
  if (righty<100) {
    righty = 100;
  }
  
  if (righty>700) {
    righty = 700;
  }
  
  if (lefty<100) {
    lefty = 100;
  }
  
  if (lefty>700) {
    lefty = 700;
  }
  
  //ball limits
  if (bally<25) {
    bally = 25;
  }
  
  if (bally>775) {
    bally = 775;
  }
  
  //go to gameover
  if (rightscore == 3 || leftscore == 3) {
    mode = GAMEOVER;
  }
  
}

void gameClicks() {
  mode=PAUSE;
}
