
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
}
if (key == 'x' && gameState == "DRINK SERVE") {
  switch (eakarnPoints) {
  case 1:
  break;
  case 2:
  break;
  case 3:
  break;
  }
  gameState = "DONE";
}

}
