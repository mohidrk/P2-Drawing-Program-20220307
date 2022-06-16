//Global Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
Boolean paper=false;
//
void pieceOfPaper() {
  fill(white);
  rect(drawingSurfaceX+width*1/60, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  paper=false;
}//End pieceOfPaper
