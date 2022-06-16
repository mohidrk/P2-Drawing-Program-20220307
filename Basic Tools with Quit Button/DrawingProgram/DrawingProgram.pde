//Global Variables
Boolean draw=false;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
//
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float secondTextX, secondTextY, secondTextWidth, secondTextHeight;
int reset=1;
color white=255, resetColour=white, red=#FF0303, black=0, quitButtonColour;
String quitButtonString = "QUIT";
String secondTextString = "Wahoo!";
//
PFont font;
int initialFontSize=55;
int size;
//
void setup() {
  //
  //Mandatory: Mistaken display orientation should break app, feedback to console and CANVAS
  size(500, 600); //fullScreen, displayWidth, displayHeight
  //
  population();
  quitButtonX = width*9/10; //18/20=9/10
  quitButtonY = height*0/20;
  quitButtonWidth = width*1/10; // 2/20=1/10
  quitButtonHeight = height*1/20;
  //
  secondTextX = quitButtonX;
  secondTextY = height*1/20;
  secondTextWidth = quitButtonWidth;
  secondTextHeight = quitButtonHeight;
  //
  font = createFont ("Harrington", initialFontSize);
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}//End setup
//
void draw() {
  //
  //Drawing Tools, with a combined Boolean
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) line( mouseX, mouseY, pmouseX, pmouseY ) ;//End Line Draw
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) ellipse ( mouseX, mouseY, drawingDiameter, drawingDiameter ); //Circle Drawing Tool
  //
  //Quit Button Hoverover
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) {
    quitButtonColour = red;
  } else {
    quitButtonColour = black;
  }//End Quit Button Hoverover
  fill(quitButtonColour);
  noStroke(); //removes rect() outline
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  stroke(reset);
  fill(resetColour); //White, not night mode friendly
  //
  //Text, Quit Button
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 20; //Change until fits
  textFont(font, size);
  text(quitButtonString, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //
  //Second Rectangle with More Text
  fill(white); 
  rect(secondTextX, secondTextY, secondTextWidth, secondTextHeight);
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 13; //Change until fits
  textFont(font, size);
  text(secondTextString, secondTextX, secondTextY, secondTextWidth, secondTextHeight);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //Paper-Button
  if (mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) {
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }//End draw Boolean
  }//Button Paper (Drawing Surface)
  //
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) exit();
  //
}//End mousepressed
//
//End MAIN
