
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
 
if (key == 'x' && gameState == "PLAY" && !displayAbout) {

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
}
//play Eakarn's voice lines on certain dialogue

if (introCounter > 11) {
  gameState = "DRINK SELECTION";



}
if (key == '1' && gameState == "DRINK SELECTION") { //Matcha-Fratcha selected
eakarnPoints = matchaFratcha;

eakarnDrinkChosen = true;  

} else if (key == '2' && gameState == "DRINK SELECTION") { //Dark Stripes selected
eakarnPoints = darkStripes;
eakarnDrinkChosen = true;  

} else if (key == '3' && gameState == "DRINK SELECTION") { //Mocha Vinci selected
eakarnPoints = mochaVinci;
eakarnDrinkChosen = true;    

} else if (key == '4' && gameState == "DRINK SELECTION") { //Pale Cloud selected
eakarnPoints = paleCloud;
eakarnDrinkChosen = true;   

} else if (key == '5' && gameState == "DRINK SELECTION") { //Cracking Cold selected
eakarnPoints = crackingCold;
eakarnDrinkChosen = true;    
}
}
if (key == 'x' && gameState == "DRINK SERVE" && ballTimer == 0) {
  
  introCounter++;
  interactionClick.play();
 switch (introCounter) {
   case 12:
   sipNoise.play();
   break;
 }
  if (introCounter > 13); {
  switch (eakarnPoints) {
  case 1: //Eakarn is displeased
  image(eakarnDispleased, 0, 0);
  badDrink.play();
  eakarnDoneDrink = true;
  break;
  case 2: //Eakarn is satisfied
  image(eakarnSatisfied, 0, 0);
  okDrink.play();
    eakarnDoneDrink = true;
  break;
  case 3: //Eakarn is pleased
  image(eakarnPleased, 0, 0);
  greatDrink.play();
    eakarnDoneDrink = true;
  break;
  }
  }

}

   if (key =='x' && eakarnDoneDrink) {
   gameState = "DONE";
   }

}
