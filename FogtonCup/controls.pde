
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

if (introCounter > intro.length-1) {
  gameState = "EAKARN";



}
}
}
