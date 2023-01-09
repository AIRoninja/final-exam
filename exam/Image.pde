PImage backGroundImage, quitButtonImage;
//
void imagePopulation() {
  backGroundImage = loadImage ("../Images/genji.jpg");
}//End imagePopulation
//
void imageNightMode() {
  //if ( nightMode==false ) tint( tintDayMode, tintDayModeOpacity ); //Day Mode, see ternary operator
  //if ( nightMode==true ) tint( tintRed, tintGreen, tintBlue, tintNightModeOpacity ); //Night Mode, see ternary operator
  //
  if ( nightMode==true ) {
    tint( tintRed, tintGreen, tintBlue, tintNightModeOpacity );
  } else {
    tint( tintDayMode, tintDayModeOpacity );
  }
}//End imageNightMode
//
void quitButtonImage() {
  quitButtonImage = backGroundImage;
  rect( quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight );
  //Aspect Ratio
  float quitButtonImageWidth=1707, quitButtonImageHeight=2506;
  //Following vars must be populated or debugger error b/c IF
  float quitButtonImageWidth_Adjusted=0.0, quitButtonImageHeight_Adjusted=0.0;
  float quitButtonImageWidth_Calculated=0.0, quitButtonImageHeight_Calculated=0.0;
  float largerDimension=0.0, smallerDimension=0.0;
  float imageWidthRatio=0.0, imageHeightRatio=0.0;
  //
  if ( quitButtonImageWidth >= quitButtonImageHeight ) {//Image's largest dimension, Landscape or Square
    largerDimension = quitButtonImageWidth;
    smallerDimension = quitButtonImageHeight;
    //
    quitButtonImageWidth_Adjusted = quitButtonImageRectWidth; //Uses builtin compression algorithm
    imageHeightRatio = smallerDimension / largerDimension; //value<1, main point of algorithm
    quitButtonImageHeight_Calculated = quitButtonImageWidth_Adjusted * imageHeightRatio;
    //
    //Debugging: x-value must be centered
    float centerX=appWidth*1/2;
    quitButtonImageRectX = centerX - quitButtonImageWidth_Adjusted * 1/2;
    imageNightMode();
    image( quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidth_Adjusted, quitButtonImageHeight_Calculated);
    //
  } else { //Portrait
    largerDimension = quitButtonImageHeight;
    smallerDimension = quitButtonImageWidth;
    //
    quitButtonImageHeight_Adjusted = quitButtonImageRectHeight; //Uses builtin compression algorithm
    imageWidthRatio = smallerDimension / largerDimension; //value<1, main point of algorithm
    quitButtonImageWidth_Calculated = quitButtonImageHeight_Adjusted * imageWidthRatio;
    //
    //Debugging: x-value must be centered
    float centerX=appWidth*1/2;
    quitButtonImageRectX = centerX - quitButtonImageWidth_Calculated * 1/2;
    imageNightMode();
    image( quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidth_Calculated, quitButtonImageHeight_Adjusted);
    //
  }
  //
  /*No Aspect Ratio
   image( quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight);
   */
  //
}//End quitButtonImage
//
void quitButtonHoverOver() {
  if ( mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight ) { //QuitButton Hoverover
    fill(white);
    noStroke();
    float centerX=appWidth*1/2;
    float quitX_whiteScreen = centerX - appWidth * 1/15;
    float quitWidth_whiteScreen = appWidth * 1/8;
    rect( quitX_whiteScreen, quitY, quitWidth_whiteScreen, quitHeight );
    strokeWeight(1); //Reset: 1 pixel
    noFill();
    quitButtonImage(); //Cookie, aspect ratio
    /*
    fill(white);
     rect( quitX, quitY, quitWidth, quitHeight ); //testing only
     noFill();
     */
  } else {
    fill(white);
    noStroke();
    float centerX=appWidth*1/2;
    float quitX_whiteScreen = centerX - appWidth * 1/15;
    float quitWidth_whiteScreen = appWidth * 1/8;
    rect( quitX_whiteScreen, quitY, quitWidth_whiteScreen, quitHeight );
    strokeWeight(1); //Reset: 1 pixel
    noFill();
    quitButtonText();
  }
}//End quitButtonHoverOver
//
//End Image Subprogram
