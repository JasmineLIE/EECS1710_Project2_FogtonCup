//ArrayList and ball idea: https://processing.org/examples/arraylistclass.html
PImage drinkDoneConfirm;
boolean ballGameDone = false;

int ballWidth = 40;
int ballTimer = 25;
int loveCount;
class Ball {
  float x;
  float y;
  float speed;
  float gravity;
  float w;
  float life = 255;

Ball(float tempX, float tempY, float tempW) {
   x = tempX;
    y = tempY;
    w = tempW;
    speed = 0;
    gravity = 0.1;
}

void move() {
 // Add gravity to speed
    speed = speed + gravity;
    // Add speed to y location
    y = y + speed;
    // If square reaches the bottom
    // Reverse speed
    if (y > height) {
      // Dampening
      speed = speed * -0.8;
      y = height;
    }
  }
boolean finished() {
 life--;
 if (life < 0) {
   return true;
 } else {
   return false;
}
}

void display() {

 fill(#FF9DB6, life); 
 ellipse(x, y, w,w);
 noStroke();

}
}
