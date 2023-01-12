float measleX, measleY, measleDiameter;
color measlesColour;
//
void measlesDynamic() {
  //
  //Population Code, must stay here
  measleDiameter = random(appHeight*1/100, appHeight*1/25);
  float measleRadius = measleDiameter * 1/2;
  measleX = random(rectFaceX+measleRadius, rectFaceX+rectFaceWidth-measleRadius);
  measleY = random(appHeight*0+measleRadius, appHeight-measleRadius);
  measlesColour = ( nightMode==true ) ? color( 255, random(155, 255), 0 ) : color( 255, random(20, 255), random(210) ) ;
  //measlesColour = color( 255, random(0, 255), random(210) );
  //cyan: (0 ,255 ,210);
  //blood red: (255, 0, 0);
  //
  noStroke();
  fill(measlesColour);
  ellipse( measleX, measleY, measleDiameter, measleDiameter );
  fill(resetWhite);
  stroke(reset);
} //End measlesDynamic
//
//Emd Draw Measles Subprogram
