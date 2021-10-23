import processing.sound.*;

/*
*FogtonCup is a one button game that requires the player to read the dialogue of characters to make guesses on what drink they would like.  Each character has a liking, neutral feeling, or disliking to all the drinks available.
 *Resource on writing Game States: https://www.youtube.com/watch?v=q8rP6R0LCss&ab_channel=JohnMcCaffrey
 *Resource on making buttons: https://processing.org/examples/button.html
 *All art assets were made by me.
 *
 *
 */

//setting up the play button at the start screen



String gameState; //this tracks what stage of the game the program is in

//setting up sound for interaction
SoundFile interactionClick;
//

PImage startScreen;
PImage aboutPage;
PImage cafeScreen;
PImage drinkMenu;
SoundFile bgMusic;

//calling Dialogue Classes

Dialogue introGo;
Dialogue e1;


//calling Dialogue Classes
//setting up the play button at the start screen
PImage staticPlay, hoveredPlay;

float bx;
float by;
int boxSizex = 208;
int boxSizey = 102;
//setting up the play button at the start screen

//booleans for play button interaction
boolean playButtonClicked = false;
boolean displayAbout = false;
//boolean for play button interaction

//Setting up Beginning Dialogue Boxes//


void setup() {
  
  introGo = new Dialogue();


  gameState = "NOT STARTED"; //the game begins at "NOT STARTED"
    
    
  size(1440, 900, P2D);  //size of the window to match the assets
  

  
    //establishing audio
  bgMusic = new SoundFile(this, "Audio/Jazz.mp3");
  bgMusic.loop();

interactionClick = new SoundFile(this, "Audio/SFX/PageClick.wav");
  //establishing audio
  
  //establishing visual assets
  startScreen = loadImage("Assets/StartGraphic.png");
  aboutPage = loadImage("Assets/AboutMenu.png");
  cafeScreen = loadImage("Assets/CafeGraphic.png");

  staticPlay = loadImage("Assets/InitiateButton.png");
  hoveredPlay = loadImage("Assets/InitiateButton_Clicked.png");
  //establishing visual assets

//establishing button parameters
  bx = 1000;
  by = 700;
  rectMode(RADIUS);
  image(staticPlay, bx, by);
//establashing button parameters  
 

}

void draw() {
  background(0); //set background to black
  print (mouseX +"," + mouseY); //print mouse coordinates to the console
  

//setting up Game States; the program runs through stages
  if (gameState == "NOT STARTED") {
    notStarted();
  } else if (gameState == "PLAY") {
    playGame();
  } 
  
  else if (gameState == "EAKARN") {
  eakarnStage();  
  }
 
  
  else if (gameState == "DONE") {
    gameOver();
  }
//setting up Game States; the program runs through stages  
}




void notStarted() {
  background(startScreen);  
  print("The game has not started");  //debug
  image(staticPlay, bx, by);


}


 




void playGame() {
  print("The game has started");  //debug
  background(cafeScreen);


//draws the about page, draws over the background again to get rid of the page when the player presses X
  if (displayAbout) {
   image(aboutPage, 0, 0); }
//draws the about page, draws over the background again to get rid of the page when the player presses X  
 if (!displayAbout) {
     print("About is closed");

     introGo.introDisplay();{
     }
 }
}
       
void eakarnStage() {
  print("Eakarn stage in play");
   background(cafeScreen);

 }
   


void temperanceStage() {
  
}

void loganStage() {
  
}

void gameOver() {
  print("The game is over"); //debug
}
