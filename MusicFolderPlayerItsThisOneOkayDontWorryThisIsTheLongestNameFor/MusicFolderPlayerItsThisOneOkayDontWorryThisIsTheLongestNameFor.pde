//YIPPEEEEEEEEEE
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
/*
Library: sketch > import library > add libary > minim
support website: https://code.compartmental.net/minim/
loop: https://code.compartmental.net/minim/audioplayer_method_loop.html
loop(0) seems best for sound effects
*/
//Global Variables - variables are what you put into code, acting as placeholders to help visualize for you and to help the computer run things.
Minim minim; //creates object to add all functions
AudioPlayer soundEffects1;
AudioPlayer playList1; //creates "playList" variable holding extensions WAV, AIFF, AU, SND and MP3
//
int appWidth, appHeight;
int size;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float AlbumCoverX, AlbumCoverY, AlbumCoverWidth, AlbumCoverHeight;
float PlayButtonX, PlayButtonY, PlayButtonWidth, PlayButtonHeight;
float ExitButtonX, ExitButtonY, ExitButtonWidth, ExitButtonHeight;
float RewindButtonX, RewindButtonY, RewindButtonWidth, RewindButtonHeight;
float NextButtonX, NextButtonY, NextButtonWidth, NextButtonHeight;
float PlaytimeBarX, PlaytimeBarY, PlaytimeBarWidth, PlaytimeBarHeight;
float LoopooLX, LoopooLY, LoopooLWidth, LoopooLHeight;
float HomeButtonX, HomeButtonY, HomeButtonWidth, HomeButtonHeight;
float SongTitleX, SongTitleY, SongTitleWidth, SongTitleHeight;
float VolumeButtonX, VolumeButtonY, VolumeButtonWidth, VolumeButtonHeight;
float TotalSongTimeX, TotalSongTimeY, TotalSongTimeWidth, TotalSongTimeHeight;
float TimeLeftX, TimeLeftY, TimeLeftWidth, TimeLeftHeight;
float AudioIconX, AudioIconY, AudioIconSize;
float AuthorNameX, AuthorNameY, AuthorNameWidth, AuthorNameHeight;
float SettingsButtonX, SettingsButtonY, SettingsButtonWidth, SettingsButtonHeight;
//
color BackgroundColour, DarkBackground, WhiteBackground;
color ForegroundColour;
color White=255, Yellow=#FFFF00, Black=0, Purple=#FF00FF;
color Red=#FF0000, Green=#00FF00, Cyan=#00FFFF, Blue=#0000FF;
PFont ExitFont;
PFont PlayFont;
PFont NextFont;
PFont BackFont;
String Exit="Exit";
String Play="Start";
String Next="Next";
String Back="Rewind";
boolean WhiteMode=false;
boolean lightMode=false, dayMode=false, nightMode=false;
//
void setup() {
  
  println("SUP LIL BITCH AWWW NOT YOUUU HAAHAHA");
  //Concatenation & Inspecting Variables with Character Escapes
  println("Width: "+width+ "\tHeight: "+height+ "\t\tDisplay Width: "+displayWidth+ "\t\tDisplay Height: "+displayHeight);
  //NULL: all values are NULL until size(), arithmetic errors
  println("Example Formula: add 1 to the width", width+1);
  //
  //Display: CANVAS & Full Screen
  //size(450, 500); //width, height
  fullScreen(); //displayWidth, displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  //Landscape is HARDCODED
  //Display Geometry: Landscape, Portait, Square
  String displayInstructions = ( appWidth >= appHeight ) ? "GOOD SHIT" : "BRUH U DUMBASS TURN YO FUCKIN PHONE";
  println(displayInstructions);
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  String extension = ".mp3";
  String ExitButtonSound = "StrawSqueak";
  String pathwaySoundEffects = ". ./THEHILLSAREALIVEWITHTHESOUNDOFMUUUUSSIIIIIIIICCCC/SoundFX/"; //Relative Pathway
  //println(pathwaySoundEffects+ExitButtonSound+extension);
  String path = sketchPath(pathwaySoundEffects + ExitButtonSound + extension); //absolute path
  //println(path);
  soundEffects1 = minim.loadFile( path );
  //playList1 = minim.loadFile( path );
  //
  size = 32;
  ExitFont = createFont("ComicSansMS", size);
  PlayFont = createFont("Arial", size);
  NextFont = createFont("Onyx", size);
  BackFont = createFont("Onyx", size);
  //
  //Population
  backgroundX = appWidth*0;
  backgroundY = appHeight*0;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;
  AlbumCoverX = appWidth*25/100;
  AlbumCoverY = appHeight*10/100;
  AlbumCoverWidth = appWidth*48/100;
  AlbumCoverHeight = appHeight*50/100;
  PlayButtonX = appWidth*45/100;
  PlayButtonY = appHeight*70/100;
  PlayButtonWidth = appWidth*8/100;
  PlayButtonHeight = appHeight*6/100;
  ExitButtonX = appWidth*92/100;
  ExitButtonY = appHeight*3/100;
  ExitButtonWidth = appWidth*5/100;
  ExitButtonHeight = appHeight*5/100;
  NextButtonX = appWidth*55/100;
  NextButtonY = appHeight*71/100;
  NextButtonWidth = appWidth*6/100;
  NextButtonHeight = appHeight*5/100;
  RewindButtonX = appWidth*37/100;
  RewindButtonY = appHeight*71/100;
  RewindButtonWidth = appWidth*6/100;
  RewindButtonHeight = appHeight*5/100;
  PlaytimeBarX = appWidth*24/100;
  PlaytimeBarY = appHeight*80/100;
  PlaytimeBarWidth = appWidth*50/100;
  PlaytimeBarHeight = appHeight*2/100;
  HomeButtonX = appWidth*3/100;
  HomeButtonY = appHeight*3/100;
  HomeButtonWidth = appWidth*5/100;
  HomeButtonHeight = appHeight*5/100;
  LoopooLX = appWidth*65/100;
  LoopooLY = appHeight*71/100;
  LoopooLWidth = appWidth*6/100;
  LoopooLHeight = appHeight*5/100;
  VolumeButtonX = appWidth*80/100;
  VolumeButtonY = appHeight*81/100;
  VolumeButtonWidth = appWidth*13/100;
  VolumeButtonHeight = appHeight*1/100;
  TotalSongTimeX = appWidth*72/100;
  TotalSongTimeY = appHeight*83/100;
  TotalSongTimeWidth = 40;
  TotalSongTimeHeight = 20;
  TimeLeftX = appWidth*24/100;
  TimeLeftY = appHeight*83/100;
  TimeLeftWidth = 40;
  TimeLeftHeight = 20;
  AudioIconX = appWidth*78/100;
  AudioIconY = appHeight*80/100;
  AudioIconSize = 25;
  SongTitleX = appWidth*25/100;
  SongTitleY = appHeight*61/100;
  SongTitleWidth = appWidth*1/5;
  SongTitleHeight = 32;
  AuthorNameX = appWidth*1/4;
  AuthorNameY = appHeight*65/100;
  AuthorNameWidth = appWidth*1/7;
  AuthorNameHeight = 20;
  SettingsButtonX = appWidth*3/100;
  SettingsButtonY = appHeight*12/100;
  SettingsButtonWidth = appWidth*5/100;
  SettingsButtonHeight = appHeight*5/100;
  
  //Layout DIVs
  //rect(X, Y, Width, Height);
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  //int centerX = appWidth*1/2;
  //int centerY = appHeight*1/2;
  //rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
  
  rect(AlbumCoverX, AlbumCoverY, AlbumCoverWidth, AlbumCoverHeight);
  rect(PlayButtonX, PlayButtonY, PlayButtonWidth, PlayButtonHeight);
  rect(ExitButtonX, ExitButtonY, ExitButtonWidth, ExitButtonHeight);
  
  rect(RewindButtonX, RewindButtonY, RewindButtonWidth, RewindButtonHeight);
  rect(NextButtonX, NextButtonY, NextButtonWidth, NextButtonHeight);
  rect(PlaytimeBarX, PlaytimeBarY, PlaytimeBarWidth, PlaytimeBarHeight);
  
  rect(HomeButtonX, HomeButtonY, HomeButtonWidth, HomeButtonHeight);
  rect(LoopooLX, LoopooLY, LoopooLWidth, LoopooLHeight);
  rect(VolumeButtonX, VolumeButtonY, VolumeButtonWidth, VolumeButtonHeight);
  
  rect(TotalSongTimeX, TotalSongTimeY, TotalSongTimeWidth, TotalSongTimeHeight);
  rect(TimeLeftX, TimeLeftY, TimeLeftWidth, TimeLeftHeight);
  square(AudioIconX, AudioIconY, AudioIconSize);
  
  rect(SongTitleX, SongTitleY, SongTitleWidth, SongTitleHeight);
  rect(AuthorNameX, AuthorNameY, AuthorNameWidth, AuthorNameHeight);
  rect(SettingsButtonX, SettingsButtonY, SettingsButtonWidth, SettingsButtonHeight);
  
  //Var population
  DarkBackground = 0; //greyscale, 0 is the same as #000000, saves resources >v'
  WhiteBackground = 255;
  White = 255;
  Yellow = #FFFF00;
  Black = 0;
  //WhiteMode = true; //must ask to see THE LIGHT-blue lgiht-
  if ( hour () >=9 && hour() <=17 ) BackgroundColour = WhiteBackground;
  if ( hour () <9 && hour() >17 ) BackgroundColour = DarkBackground;
  if ( WhiteMode == true && hour () >=9 && hour() <=17 )
  { BackgroundColour = WhiteBackground; 
  ForegroundColour = #FFFFFF;}
  else { BackgroundColour = DarkBackground;
  ForegroundColour = #FFFF00;}; //yellow uwu
  //
} //End setup
//
void draw() {
  background(BackgroundColour); //greyscale uwu
  fill(ForegroundColour);
  //
  //Exit button
  //fill(Purple);
  //if ( mouseX>X && mouseX<X+Width && mouseY>Y && mouseY<Y+Height ) fill(Yellow);
  fill(Purple);
  rect(ExitButtonX, ExitButtonY, ExitButtonWidth, ExitButtonHeight);
  if (mouseX>ExitButtonX && mouseX<ExitButtonX+ExitButtonWidth && mouseY>ExitButtonY && mouseY<ExitButtonY+ExitButtonHeight) {
  fill (Yellow);
  rect(ExitButtonX+ExitButtonWidth*1/7, ExitButtonY+ExitButtonHeight*1/7, ExitButtonWidth*5/7, ExitButtonHeight*5/7);
} else {
  fill(Purple);
};
  fill(Red);
  println(mouseX, mouseY);
  textAlign(CENTER, CENTER);
  size = 32;
  textFont(ExitFont, size);
  text(Exit, ExitButtonX, ExitButtonY, ExitButtonWidth, ExitButtonHeight);
  //
  fill(BackgroundColour);
  fill(Cyan);
  rect(PlayButtonX, PlayButtonY, PlayButtonWidth, PlayButtonHeight);
  if(mouseX>PlayButtonX && mouseX<PlayButtonX+PlayButtonWidth && mouseY>PlayButtonY && mouseY<PlayButtonY+PlayButtonHeight) {
  fill(Green);
  rect(PlayButtonX+PlayButtonWidth*1/7, PlayButtonY+PlayButtonHeight*1/7, PlayButtonWidth*3/4, PlayButtonHeight*3/4);
} else {
  fill(Cyan);
};
  fill(Purple);
  textAlign(CENTER, CENTER);
  size = 32;
  textFont(PlayFont, size);
  text(Play, PlayButtonX, PlayButtonY, PlayButtonWidth, PlayButtonHeight);
  //
  fill(BackgroundColour);
  fill(Cyan);
  rect(NextButtonX, NextButtonY, NextButtonWidth, NextButtonHeight);
  if(mouseX>NextButtonX && mouseX<NextButtonX+NextButtonWidth && mouseY>NextButtonY && mouseY<NextButtonY+NextButtonHeight) {
    fill(Green);
    rect(NextButtonX+NextButtonWidth*1/7, NextButtonY+NextButtonHeight*1/7, NextButtonWidth*3/4, NextButtonHeight*3/4);
  } else {
    fill(Cyan);
  };
  fill(Red);
  textAlign(CENTER, CENTER);
  size = 32;
  textFont(NextFont, size);
  text(Next, NextButtonX, NextButtonY, NextButtonWidth, NextButtonHeight);
  //
  fill(Cyan);
  rect(RewindButtonX, RewindButtonY, RewindButtonWidth, RewindButtonHeight);
  if(mouseX>RewindButtonX && mouseX<RewindButtonX+RewindButtonWidth && mouseY>RewindButtonY && mouseY<RewindButtonY+RewindButtonHeight) {
    fill(Green);
    rect(RewindButtonX+RewindButtonWidth*1/7, RewindButtonY+RewindButtonHeight*1/7, RewindButtonWidth*3/4, RewindButtonHeight*3/4);
  } else {
    fill(Cyan);
  };
  fill(Red);
  textAlign(CENTER, CENTER);
  size = 32;
  textFont(BackFont, size);
  text(Back, RewindButtonX, RewindButtonY, RewindButtonWidth, RewindButtonHeight);
} //End draw
//
void keyPressed() { //Listener
  if (key=='Q' || key=='q') exit();
  if (key=='W' || key=='w') {
    lightMode = true;
  } else {
    lightMode = false;}
} //End keyPressed
//ExitButtonX, ExitButtonY, ExitButtonWidth, ExitButtonHeight
//
void mousePressed() { //Listener 2: the Venting Strikes Back
  if ( mouseX>ExitButtonX && mouseX<ExitButtonX+ExitButtonWidth && mouseY>ExitButtonY && mouseY<ExitButtonY+ExitButtonHeight );
  {
    soundEffect_1();
  }
}
//End mousePressed
//
// End MAIN Program
