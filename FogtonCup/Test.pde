int eakarnIntroCounter = -1;
String [] eakarnIntroUrls = {"Assets/Scenes/Eakarn/Eakarn_01", "Assets/Scenes/Eakarn/Eakarn_02", "Assets/Scenes/Eakarn/Eakarn_03", "Assets/Scenes/Eakarn/Eakarn_04", "Assets/Scenes/Eakarn/Eakarn_05", "Assets/Scenes/Eakarn/Eakarn_06", "Assets/Scenes/Eakarn/Eakarn_07", "Assets/Scenes/Eakarn/Eakarn_08", "Assets/Scenes/Eakarn/Eakarn_09", "Assets/Scenes/Eakarn/Eakarn_10"};
PImage[] eakarnIntro = new PImage[eakarnIntroUrls.length];

void setup() {
  size(1440, 900, P2D);  //size of the window to match the assets
        for (int k =0; k<eakarnIntro.length; k++) {
     eakarnIntro[k] = loadImage(eakarnIntroUrls[k]);
}
