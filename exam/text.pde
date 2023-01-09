PFont harrington;
//
void textSetup() {
  //Assignment #2: Minimum Expectation = one font
  //
  //Fonts from OS (Operating System)
  //String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For listing all possible fonts to choose from, then createFont
  harrington = createFont("Harrington", 55); //Verify the font exists in Processing.Java
  // Tools / Create Font / Find Font / Do not press "OK", known bug
  //
}//End textSetup
//
void spaceBarText() {
  //rect( startX, startY, startWidth, startHeight );
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  int size = 19; //Change the number until it fits
  textFont(harrington, size); 
  String spaceBar = "Press the SPACE BAR to continue";
  text( spaceBar, startX, startY, startWidth, startHeight );
  noFill(); //Reset
}//End spaceBarText
//
void quitButtonText() {
  //rect( quitX, quitY, quitWidth, quitHeight );
  color ink = ( nightMode==true ) ? #7D7D00 : purple ;
  fill(ink); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  int size = 33; //Change the number until it fits
  textFont(harrington, size); 
  String quitButton = "Quit";
  text( quitButton, quitX, quitY, quitWidth, quitHeight );
  noFill(); //Reset
}//End spaceBarText
//
//End Text Subprogram
