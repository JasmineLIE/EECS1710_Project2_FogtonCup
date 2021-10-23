//dialogue for when the game starts and the about menu is clicked away from
boolean eakarnPhase1 = false;
boolean eakarnPhase2 = false;

//Intro
int introCounter = -0
String [] introUrls = {"Assets/CaAssets/Beginning1.png", "Assets/Beginning2.png"};
PImage[] intro = new PImage[introUrls.length];
//Intro 

//Phase 1 Eakarn
int eakarnIntroCounter = 0
String [] eakarnIntroUrls = {"Assets/Scenes/Eakarn/Eakarn_01", "Assets/Scenes/Eakarn/Eakarn_02", "Assets/Scenes/Eakarn/Eakarn_03", "Assets/Scenes/Eakarn/Eakarn_04", "Assets/Scenes/Eakarn/Eakarn_05", "Assets/Scenes/Eakarn/Eakarn_06", "Assets/Scenes/Eakarn/Eakarn_07", "Assets/Scenes/Eakarn/Eakarn_08", "Assets/Scenes/Eakarn/Eakarn_09", "Assets/Scenes/Eakarn/Eakarn_10"};
PImage[] eakarnIntro = new PImage[eakarnIntroUrls.length];
//Phase 1 Eakarn

//Phase 2 Eakarn
int eakarnSipCounter = 0
String[] eakarnSipUrls = { "Assets/Scenes/Eakarn/Eakarn_11", "Assets/Scenes/Eakarn/Eakarn_12"};
PImage[] eakarnSip = new PImage[eakarnSipUrls.length];
//Phase 2 Eakarn


class Dialogue { //data
float x;
float y;



  Dialogue() { //construction
  
  x = width/2;
  y = height/2;
     
    
       


  }
  
  void introDisplay() { //function
    for (int i =0; i<intro.length; i++) {
     intro[i] = loadImage(introUrls[i]);
    
    }
    
image(intro[introCounter], x, y);
imageMode(CENTER);


  }
  void eakarnIntroDisplay() {
     
    
  
  for (int i =0; i<intro.length; i++) {
     intro[i] = loadImage(introUrls[i]);
    
    }
     image(eakarnIntro[eakarnIntroCounter], x, y);
imageMode(CENTER); 
  }
}
