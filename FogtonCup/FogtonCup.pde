import processing.sound.*;

/*
*FogtonCup is a one button game that requires the player to read the dialogue of characters to make guesses on what drink they would like.  Each character has a liking, neutral feeling, or disliking to all the drinks available.
*Afterwards, the player is required to put their heart into the drink!  When prompted, pressing the X key puts 'love' into a drink, at the end love is calculated and shown to the palyer
 *Resource on writing Game States: https://www.youtube.com/watch?v=q8rP6R0LCss&ab_channel=JohnMcCaffrey
 *Resource on making buttons: https://processing.org/examples/button.html
 *All art assets were made by me.
 *Jazz Music: https://www.youtube.com/watch?v=gv7hcXCnjOw&ab_channel=LuKremBo
 *Character(s) is mentioned because multiple assets and character art was created to accomodate for two more characters, but due to time limits and constraints I settled on just having Eakarn be the focus of the program.
 */

//setting up the play button at the start screen



String gameState; //this tracks what stage of the game the program is in

//setting up sound for interaction
SoundFile interactionClick;
SoundFile bgMusic;
SoundFile doorBell, sipNoise;
SoundFile badDrink, okDrink, greatDrink;
//setting up sound for interaction

PImage startScreen;
PImage aboutPage;
PImage cafeScreen;
PImage drinkMenu;
PImage gameOverScreen;
PImage coffeeCup;



//calling Dialogue Class

Dialogue introGo;

//calling Dialogue Class

//setting up Ball class//

ArrayList<Ball> balls;

//setting up Ball class//


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
  
//setting up items for drink minigame

  balls = new ArrayList<Ball>();
  coffeeCup = loadImage("Assets/CupMash.png");
    balls.add(new Ball(width/2, 0, ballWidth));
    
//setting up items for drink minigame
  
    //establishing audio
  bgMusic = new SoundFile(this, "Audio/Jazz.mp3");
  bgMusic.loop();

doorBell = new SoundFile(this, "Audio/SFX/DoorBell.wav");
interactionClick = new SoundFile(this, "Audio/SFX/PageClick.wav");
sipNoise = new SoundFile(this, "Audio/SFX/SipNoise.wav");
badDrink = new SoundFile(this, "Audio/SFX/BadDrink.wav");
okDrink = new SoundFile(this, "Audio/SFX/OkDrink.wav");
greatDrink = new SoundFile(this, "Audio/SFX/GreatDrink.wav");

eakarnHum1 = new SoundFile(this, "Audio/Eakarn/Eakarn_Hum1.mp3");
eakarnHum2 = new SoundFile(this, "Audio/Eakarn/Eakarn_Hum2.mp3");
eakarnHum3 = new SoundFile(this, "Audio/Eakarn/Eakarn_Hum3.mp3");
  //establishing audio
  
  
  //establishing visual assets
  startScreen = loadImage("Assets/StartGraphic.png");
  aboutPage = loadImage("Assets/AboutMenu.png");
  cafeScreen = loadImage("Assets/CafeGraphic.png");
gameOverScreen = loadImage("Assets/CharacterDialogue/Eakarn/EakarnLeaves.png");
drinkMenu = loadImage("Assets/DrinkMenu.png");
  staticPlay = loadImage("Assets/InitiateButton.png");
  hoveredPlay = loadImage("Assets/InitiateButton_Clicked.png");
  
  eakarnDispleased = loadImage("Assets/CharacterDialogue/Eakarn/EakarnDispleased.png");
  eakarnSatisfied = loadImage("Assets/CharacterDialogue/Eakarn/EakarnSatisfied.png");
  eakarnPleased = loadImage("Assets/CharacterDialogue/Eakarn/EakarnPleased.png");
  
  matchaFratchaChosen = loadImage("Assets/MatchaFratchaConfirm.png");
  darkStripesChosen = loadImage("Assets/DarkStripesConfirm.png");
  mochaVinciChosen = loadImage("Assets/MochaVinciConfirm.png");
  paleCloudChosen = loadImage("Assets/PaleCloudConfirm.png");
  crackingColdChosen = loadImage("Assets/crackingColdChosen.png");
  
  drinkDoneConfirm = loadImage("Assets/DrinkDoneConfirm.png");
  
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
  
  else if (gameState == "DRINK SELECTION") {
  drinkStage();  
  } 
  
  else if (gameState == "DRINK MINIGAME") {
    drinkMinigame();
  }
  
  else if (gameState == "DRINK SERVE") {
    serveDrink();
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

     introGo.introDisplay();
     
 
}
}
       
void drinkStage() {
  print("Drink stage in play"); //debug
   background(0);
  
  image(drinkMenu, 720, 450);
  
  //visual dialogue that appears based on what drink was chosen
   if (matchaFratchaClicked) {

 image(matchaFratchaChosen,720, 450);
 

   } else if (darkStripesClicked) {
  
   image(darkStripesChosen,720, 450);

 
 } else if (mochaVinciClicked) {
   
 image(mochaVinciChosen, 720, 450);

 
 }
 else if (paleCloudClicked) {
   
 image(paleCloudChosen, 720, 450);

 
 }
 else if (crackingColdClicked) {
 image(crackingColdChosen, 720, 450);

   }
     //visual dialogue that appears based on what drink was chosen
 }

void drinkMinigame() {
   print("Drink Minigame stage in play"); //debug
   background(cafeScreen); 
   


   
        for (int i = balls.size()-1; i >= 0; i--) { 
    // An ArrayList doesn't know what it is storing so we have to cast the object coming out
    Ball ball = balls.get(i);
    ball.move();
    ball.display();
    if (ball.finished()) {
      // Items can be deleted with remove()
      balls.remove(i);
      
    
  
}
     }
     

      image(coffeeCup, 720, 450);
     
     
      
     if (ballTimer == 1) {
       image(drinkDoneConfirm, 720, 450);
     }
}


void serveDrink() {
   print("Serve Drink Stage in play"); //debug
   background(cafeScreen);


  switch (eakarnPoints) {
  case 1: //Eakarn is displeased
  image(eakarnDispleased,720, 450);

  eakarnDoneDrink = true;
  break;
  case 2: //Eakarn is satisfied
  image(eakarnSatisfied, 720, 450);

    eakarnDoneDrink = true;
  break;
  case 3: //Eakarn is pleased
  image(eakarnPleased, 720, 450);

    eakarnDoneDrink = true;
  break;
  }
  
   
}


void gameOver() {
  print("The game is over"); //debug
   background(cafeScreen);
   image(gameOverScreen, 720, 450);
    textSize(30);
    fill(0);
      text("Love Accoumulated:  " + loveCount, 100, 100) ;
}
