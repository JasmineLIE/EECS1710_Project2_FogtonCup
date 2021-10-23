//dialogue for when the game starts and the about menu is clicked away from



//Intro
int introCounter = 0;
String [] introUrls = {"Assets/Beginning1.png", "Assets/Beginning2.png", "Assets/CharacterDialogue/Eakarn/EakarnIntro_01.png", 
"Assets/CharacterDialogue/Eakarn/EakarnIntro_02.png", "Assets/CharacterDialogue/Eakarn/EakarnIntro_03.png", "Assets/CharacterDialogue/Eakarn/EakarnIntro_04.png", 
"Assets/CharacterDialogue/Eakarn/EakarnIntro_05.png","Assets/CharacterDialogue/Eakarn/EakarnIntro_06.png","Assets/CharacterDialogue/Eakarn/EakarnIntro_07.png", "Assets/CharacterDialogue/Eakarn/EakarnIntro_08.png",
"Assets/CharacterDialogue/Eakarn/EakarnIntro_09.png", "Assets/CharacterDialogue/Eakarn/EakarnIntro_10.png", 
"Assets/CharacterDialogue/Eakarn/EakarnSip_01.png", "Assets/CharacterDialogue/Eakarn/EakarnSip_02.png"};
PImage[] intro = new PImage[introUrls.length];
//Intro 

//Voice bytes//

SoundFile eakarnHum1, eakarnHum2, eakarnHum3;


//Voice Bytes


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
  
  
}
