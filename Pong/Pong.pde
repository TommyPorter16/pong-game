//Tommy Porter
//Block 1-1a
//October 15, 2020

//Pong!

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//pallette of colours
  color space=#31393C;
  color blue=#2176FF;
  color jeans=#33A1FD;
  color yellow=#FDCA40;
  color orange=#F79824;

//mode framework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//entity variables
float leftx,lefty,leftd,rightx,righty,rightd; //paddles
float ballx,bally,balld; //ball
boolean AI;

//distance and radiace
float ld,rd,lr,rr,br;


//ball movement
float vballx, vbally;

//pong font
PFont robot;

//keyboard variables
boolean wkey,skey,upkey,downkey;

//scoring
int leftscore,rightscore,timer;

//sound variables
Minim minim;
AudioPlayer leftpaddle,rightpaddle,score,wall,clapping,intro;

void setup() {
  size(800,800);
  mode = INTRO;
  
  
  //initializing paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //initializing ball
  ballx = width/2;
  bally = height/2;
  balld = 50;
  
  //initializing distance
  rd=dist(rightx,righty,ballx,bally);
  ld=dist(leftx,lefty,ballx,bally);
  
  lr=leftd/2;
  rr=rightd/2;
  br=balld/2;
  
  vballx = random(3,5);
  vbally = random(-.1,.1);
  
  leftscore=0;
  rightscore=0;
  timer=100;
  //initialize keyboard variables
  wkey = skey = upkey = downkey = false;
  //initializing font
  robot = createFont("Robot Z.ttf",200);

  //initializing AI
  AI=false;

//minim
  minim = new Minim(this);
  leftpaddle=minim.loadFile("leftpaddle.wav");
  rightpaddle=minim.loadFile("rightpaddle.wav");
  score=minim.loadFile("score.wav");
  wall=minim.loadFile("wall.wav");
  clapping=minim.loadFile("clapping.wav");
  intro=minim.loadFile("intro.wav");

}


void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else{
     println("Mode error: " + mode); 
  }
  
  
  
}
