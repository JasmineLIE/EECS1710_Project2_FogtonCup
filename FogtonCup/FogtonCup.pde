import processing.sound.*;

/*
*FogtonCup is a one button game that requires the player to read the dialogue of characters to make guesses on what drink they would like.  Each character has a liking, neutral feeling, or disliking to all the drinks available.
 *Resource on writing Game States: https://www.youtube.com/watch?v=q8rP6R0LCss&ab_channel=JohnMcCaffrey
 *Resource on making buttons: https://processing.org/examples/button.html
 *All art assets were made by me.
 *
 *
 */
String gameState; //this tracks what stage of the game the program is in
PImage startScreen;
PImage aboutPage;
PImage cafeScreen;
SoundFile bgMusic, cafeAmbience;

//setting up the play button at the start screen
PImage staticPlay, hoveredPlay;

float bx;
float by;
int boxSizex = 208;
int boxSizey = 102;

boolean playButtonClicked = false;
boolean displayAbout = false;

//setting up the play button at the start screen

void setup() {
  
  gameState = "NOT STARTED";
    
    
  size(1440, 900, P2D);
  bgMusic = new SoundFile(this, "Audio/Jazz.mp3");
  bgMusic.loop();
  cafeAmbience = new SoundFile(this, "Audio/Ambience.mp3");

  startScreen = loadImage("Assets/StartGraphic.png");
  aboutPage = loadImage("Assets/AboutMenu.png");
  cafeScreen = loadImage("Assets/CafeGraphic.png");

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
  } else if (gameState == "PLAY") {
    playGame();
  } else if (gameState == "DONE") {
    gameOver();
  }
}




void notStarted() {
  background(startScreen);  
  print("The game has not started");  
  image(staticPlay, bx, by);


}


 




void playGame() {
  print("The game has started");  
  background(cafeScreen);
  cafeAmbience.loop();
  
  if (displayAbout) {
   image(aboutPage, 0, 0);
  } else {
    image(cafeScreen, 0, 0);
  }
  

}

void gameOver() {
  print("The game is over");
}
