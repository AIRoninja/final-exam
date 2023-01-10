void population() {
  float centerX = appWidth*1/2;
  float centerY = appHeight*1/2;
  //
  int smallerDimension;
  smallerDimension = ( landscape == true) ? appHeight : appWidth;
  println(smallerDimension);
  //
  rectFaceX = centerX - smallerDimension*1/2;
  rectFaceY = appHeight * 0;
  rectFaceWidth = smallerDimension;
  rectFaceHeight = rectFaceWidth; //rectFace is square
  faceX = centerX;
  faceY  = centerY;
  faceDiameter = smallerDimension;
  //
  leftEyeX = appWidth*1.4/4;
  rightEyeX = appWidth*2.6/4;
  leftEyeY = appHeight*1/4;
  rightEyeY = leftEyeY; //Best Practice: change one line of code
  eyeDiameter = smallerDimension*1/4;
  //
  mouthX1 = leftEyeX;
  mouthY1 = smallerDimension*3/4;
  mouthX2 = rightEyeX;
  mouthY2 = mouthY1;
  mouthOpen = smallerDimension*1/4;
  //
  xNose1 = faceX;
  yNose1 = leftEyeY;
  xNose2 = faceX - leftEyeY*1/2;
  yNose2 = faceY ;
  xNose3 = faceX + leftEyeY*1/2;
  yNose3 = faceY ;
  //
  startWidth = appWidth*1/2;
  startHeight = appHeight*1/10;
  startX = centerX - startWidth*1/2;
  startY = centerY - startHeight*1/2;
  //
  backgroundX = appWidth * 0;
  backgroundY = appHeight * 0;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;
  //
  quitWidth = appWidth * 1/3;
  quitHeight = appHeight * 1/10;
  quitX = centerX - quitWidth * 1/2;
  quitY = centerY - 4*quitHeight;
  //
  quitButtonImageRectWidth = quitWidth;
  quitButtonImageRectHeight = quitHeight; //Will need to be fixed
  quitButtonImageRectX = quitX;
  quitButtonImageRectY = quitY;
  //
} //End Population
//
// End Population Subprogram
