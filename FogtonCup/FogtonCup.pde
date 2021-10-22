import processing.sound.*;

/*
*FogtonCup is a one button game that requires the player to read the dialogue of characters to make guesses on what drink they would like.  Each character has a liking, neutral feeling, or disliking to all the drinks available.
*Resource on writing Game States: https://www.youtube.com/watch?v=q8rP6R0LCss&ab_channel=JohnMcCaffrey
*Resource on making buttons: https://www.youtube.com/watch?v=hugGdTfC4Ws&ab_channel=CoprocessingCoprocessing
*All art assets were made by me.
*
*
*/
String gameState; //this tracks what stage of the game the program is in
PImage startScreen;
 PImage aboutPage;
SoundFile bgMusic;
  PImage staticPlay, hoveredPlay;
  
  
 
float bx;
float by;
int boxSizex = 208;
int boxSizey = 102;

boolean playButtonClicked = false;
boolean overPlayButton = false;


void setup() {
 size(1440, 900, P2D);
 bgMusic = new SoundFile(this, "Audio/Jazz.mp3");
 bgMusic.loop();
gameState = "NOT STARTED";
startScreen = loadImage("Assets/StartGraphic.png");
aboutPage = loadImage("Assets/AboutMenu.png");

 staticPlay = loadImage("Assets/InitiateButton.png");
  hoveredPlay = loadImage("Assets/InitiateButton_Clicked.png");

  
  bx = 1000;
  by = 700;
  rectMode(RADIUS);
  image(staticPlay, bx, by);
}

void draw() {
  background(0);
  print (mouseX +"," + mouseY); //print mouse coordinates to the console
  
  if (gameState == "NOT STARTED") {
    notStarted();

  }
  else if (gameState == "PLAY") {
    playGame();
  }
  else if (gameState == "DONE") {
    gameOver();
  }
   
   }
     
  


void notStarted() {
background(startScreen);  
print("The game has not started");  
image(staticPlay, bx, by);

 if (mouseX > bx-boxSizex && mouseX < bx+boxSizex && 
      mouseY > by-boxSizey && mouseY < by+boxSizey) {
   
        overPlayButton = true;
        image(hoveredPlay, bx, by);
        if(!playButtonClicked) {
          image(hoveredPlay, bx, by); }
          
      } else {
        overPlayButton = false;
}
//Draw the Button

}
void mousePressed() {

  if (overPlayButton) {
    playButtonClicked = true;
    image(hoveredPlay, bx, by);
  } else {
    playButtonClicked = false;
    image(staticPlay, bx, by);
}

}

void playGame() {
print("The game has started");  
}

void gameOver() {
print("The game is over");
  
}
