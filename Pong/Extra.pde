void reset () {
 ballx=width/2;
 bally=height/2;
 rightx=0;
 righty=height/2;
 leftx=800;
 lefty=height/2;
 timer=100;
 
 
}

void resetScore() {
  leftscore=0;
  rightscore=0;
}
void tactile(float x, float y, float r) {
  if(dist(x,y,mouseX,mouseY)<r) {
    stroke(255,255,0);
  }  else {
    stroke(0);
  }
}

void tactileRect(float x, float y, float w, float h) {
  if(mouseX > x && mouseX < x+w && mouseY >y && mouseY <y+h) {
    stroke(255,255,0);
  }  else {
    stroke(0);
  }
}
