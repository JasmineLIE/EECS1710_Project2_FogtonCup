
void mousePressed() {  //sets up the play button on the starting screen

  if (mouseX > bx-boxSizex && mouseX < bx+boxSizex && 
    mouseY > by-boxSizey && mouseY < by+boxSizey && gameState == "NOT STARTED") {

  playButtonClicked = true;
    image(hoveredPlay, bx, by);
    gameState = "PLAY";
    displayAbout = true;
    }
}

void keyPressed() { 
  //allows the player to click out of the about page and begin the game
  if (key == 'x' && gameState == "PLAY" && displayAbout); {

displayAbout = false;
  //allows the player to click out of the about page and begin the game
 
  }
 
if (key == 'x' && gameState == "PLAY" && !displayAbout) { //begins dialogue once the about page has been closed

introCounter++;
interactionClick.play();

//play Eakarn's voice lines on certain dialogue
switch(introCounter) {
  case 2:
  doorBell.play();
  break;
  case 6:
  eakarnHum3.play();
  break;
  case 8:
  eakarnHum1.play();
  break;
  case 9:
  eakarnHum2.play();
  break;
  case 12:
  gameState = "DRINK SELECTION";
}





}

//players can press a key button when presented with the menu

   
  if (key == '1' && gameState == "DRINK SELECTION" && !eakarnChoseDrink) { //Matcha-Fratcha selected
print("1 chosen");
eakarnPoints = matchaFratcha;

matchaFratchaClicked = true;
darkStripesClicked = false;
mochaVinciClicked = false;
paleCloudClicked = false;
 crackingColdClicked = false;
 
eakarnChoseDrink = true;


} else if (key == '2'&& gameState == "DRINK SELECTION" && !eakarnChoseDrink) { //Dark Stripes selected
print("2 chosen");
eakarnPoints = darkStripes;

darkStripesClicked = true;
matchaFratchaClicked = false;
mochaVinciClicked = false;
paleCloudClicked = false;
 crackingColdClicked = false;
 
eakarnChoseDrink = true;


} else if (key == '3' && gameState == "DRINK SELECTION" && !eakarnChoseDrink) { //Mocha Vinci selected
print("3 chosen");
eakarnPoints = mochaVinci;

matchaFratchaClicked = false;
mochaVinciClicked= true;
darkStripesClicked = false;
paleCloudClicked = false;
crackingColdClicked = false;
 
eakarnChoseDrink = true;


} else if (key == '4'  && gameState == "DRINK SELECTION" && !eakarnChoseDrink) { //Pale Cloud selected
print("4 chosen");
eakarnPoints = paleCloud;

paleCloudClicked = true;
matchaFratchaClicked = false;
darkStripesClicked = false;
mochaVinciClicked = false;
crackingColdClicked = false;

eakarnChoseDrink = true;


} else if (key == '5' && gameState == "DRINK SELECTION" && !eakarnChoseDrink) { //Cracking Cold selected
print("5 chosen");
eakarnPoints = crackingCold;

matchaFratchaClicked = false;
darkStripesClicked = false;
mochaVinciClicked = false;
paleCloudClicked = false;
crackingColdClicked = true;

eakarnChoseDrink = true;


}


if (key == 'x' && eakarnChoseDrink) {//once the dialogue box associated with the drink appears, when the players close out of it by pressing x they start the dirnk minigame
  gameState = "DRINK MINIGAME";
}



if (key == 'x' && gameState == "DRINK MINIGAME") { //by pressing X, players put love into the coffee.  How much they can click within 25 seconds is measured
    if (ballTimer > 0) {
  if (key == 'x') {
   balls.add(new Ball(random(469, 906), 0, ballWidth));
   loveCount++;
  }
  ballTimer--;
  } 
  
 
  }
 


if (key == 'x' && ballTimer == 0) { //set sound bytes for the success measure of the drink served
  gameState = "DRINK SERVE";
  
 if (gameState == "DRINK SERVE") {
 switch (eakarnPoints) {
  case 1:
  badDrink.play();
  break;
  case 2:
    okDrink.play();
  break;
  case 3:
    greatDrink.play();
  break;
  }
 }

}

   if (key =='x' && eakarnDoneDrink) {
   gameState = "DONE";
   }


}
