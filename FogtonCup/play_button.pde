class playButton {
  PImage staticPlay, hoveredPlay;
  
  
 
float bx;
float by;
int boxSizex = 208;
int boxSizey = 102;

boolean playButtonClicked = false;
boolean overPlayButton = false;


//1121, 774

void setup() {
  
   staticPlay = loadImage("Assets/InitiateButton.png");
  hoveredPlay = loadImage("Assets/InitiateButton_Clicked.png");

  
  bx = 1121;
  by = 774;
  rectMode(RADIUS);
  image(staticPlay, bx, by);
}

void draw() {
  if (mouseX > bx-boxSizex && mouseX < bx+boxSizex && 
      mouseY > by-boxSizey && mouseY < by+boxSizey) {
        overPlayButton = true;
        image(hoveredPlay, bx, by);
        if(!playButtonClicked) {
          image(staticPlay, bx, by); }
          
      } else {
        overPlayButton = false;
}
//Draw the Button
image(staticPlay, bx, by);
}
void mousePressed() {
  if (overPlayButton) {
    playButtonClicked = true;
    image(hoveredPlay, bx, by);
  } else {
    playButtonClicked = false;
}
}

}
