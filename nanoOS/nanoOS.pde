// v0.2.0

PImage img;

int state = 0;

int mouseXpos;
int mouseYpos;


int size = 200;
int curve = 15;

int column1 = 180;
int column2 = 900;
int column3 = 1550;

int row1 = 200;
int row2 = 650;

boolean doubleClick = false;


void setup() {
  size(1927, 1080);
  background(50);

  println("v0.1.3");
  println("Nano OS");
  println("A project by CaptainCoder and MTN73");

  img = loadImage("Background_3.jpg");
  
  ballX = 700; //sets the default ball position to be in the center of the screen
  ballY = 400; //
}

void draw() {

  if (state == 0) {

    image(img, 0, 0);

    stroke(#000000);

    fill(250, 8, 8);
    rect(column1, row1, size, size, curve);
    fill(8, 114, 250);
    rect(column2, row1, size, size, curve);
    fill(8, 250, 151);
    rect(column2, row2, size, size, curve);
    fill(250, 157, 8);
    rect(column1, row2, size, size, curve);
    fill(250, 8, 218);
    rect(column3, row1, size, size, curve);
    fill(241, 250, 8);
    rect(column3, row2, size, size, curve);

    textSize(25);
    fill(0, 0, 0);

    text("CALENDAR", column1+35, row1+110);
    text("PONG", column2+62, row1+110);
    text("SETTINGS", column3+45, row1+110);
    text("CLOCK", column1+55, row2+110);
    text("APP STORE", column2+40, row2+110);
    text("NOTEPAD", column3+40, row2+110);

    fill(250, 8, 8);
    rect(column1, row1, size, size, curve);
    fill(8, 114, 250);
    rect(column2, row1, size, size, curve);
    fill(8, 250, 151);
    rect(column2, row2, size, size, curve);
    fill(250, 157, 8);
    rect(column1, row2, size, size, curve);
    fill(250, 8, 218);
    rect(column3, row1, size, size, curve);
    fill(241, 250, 8);
    rect(column3, row2, size, size, curve);

    textSize(25);
    fill(0, 0, 0);

    text("CALENDAR", column1+35, row1+110);
    text("PONG", column2+62, row1+110);
    text("SETTINGS", column3+45, row1+110);
    text("CLOCK", column1+55, row2+110);
    text("APP STORE", column2+40, row2+110);
    text("NOTEPAD", column3+40, row2+110);
  }
  if (state==1) {

    calendar();
  }

  if (state == 2) {

    pong();
  }

  if (state==3) {

    setting();
  }

  if (state == 4) {

    clock();
  }

  if (state == 5) {
    appstore();
  }

  if (state == 6) {

    notepad();
  }
}
void mousePressed() {

  mouseXpos = mouseX;
  mouseYpos = mouseY;

  mouseIsClicked = true;

  iconClicked();
}


void iconClicked() {

  if (state == 0) {

    if (mouseXpos > column1 && mouseXpos < column1 + 200) {
      if (mouseYpos > row1 && mouseYpos < row1+200) { 

        state = 1;
      }
    }

    if (mouseXpos > column2 && mouseXpos < column2 + 200) {
      if (mouseYpos > row1 && mouseYpos < row1+200) {

        state = 2;
      }
    }

    if (mouseXpos > column3 && mouseXpos < column3 + 200) {
      if (mouseYpos > row1 && mouseYpos < row1+200) { 

        state = 3;
      }
    }

    if (mouseXpos > column1 && mouseXpos < column1 + 200) {
      if (mouseYpos > row2 && mouseYpos < row2+200) { 

        state = 4;
      }
    }

    if (mouseXpos > column2 && mouseXpos < column2 + 200) {
      if (mouseYpos > row2 && mouseYpos < row2+200) { 

        state = 5;
      }
    }

    if (mouseXpos > column3 && mouseXpos < column3 + 200) {
      if (mouseYpos > row2 && mouseYpos < row2+200) { 

        state = 6;
      }
    }
  }
}
void exitButton() {

  //if(state != 2){
  if (doubleClick == false) {

    stroke(#FFFFFF);

    if (scaledIfNOW(0, 75, 0, 150)) {

      fill(#FFFFFF); //white

      scaledRect(0, 0, 150, 75, 25);

      fill(#000000); //black

      scaledTextS("EXIT", 35, 50, 40);
    } else {

      fill(#000000); //black

      scaledRect(0, 0, 150, 75, 25);

      fill(#FFFFFF); //white

      scaledTextS("EXIT", 35, 50, 40);
    }

    if (scaledIf(0, 75, 0, 150)) { // if button clicked

      state = 0; //set state to 0 (homescreen)
      pongState = 0;
      initialize();
      noteState = 0;
    }
  }
}

void keyPressed() {

  if (keyCode == 40) {

    rPaddleDown = true;
  }
  if (keyCode == 38) {

    rPaddleUp = true;
  }

  if (keyCode == 83) {

    lPaddleDown = true;
  }
  if (keyCode == 87) {

    lPaddleUp = true;
  }

  if (keyCode == 32) {

    spacePressed = true;

    if (run == true) {

      run = false;
    } else if (run == false) {

      timerStart = millis();
      
      run = true;
    }



    if (gameOver == false && ballXspeed == 0) {

      wait = false;


      ballYspeed = 4;

      if (rightScored == true) {

        if (fastMode == false) {

          ballXspeed = 15;
        } else {

          ballXspeed = 25;
        }
        wait=false;
      }
      if (leftScored == true) {

        if (fastMode == false) {

          ballXspeed = -15;
        } else {

          ballXspeed = -25;
        }
        wait=false;
      }
    }

    //leftScored = false;
    //rightScored = false;
  }


  //38 = up
  //40 = down

  //87 = w
  //83 = s
  
  newInput = false;
  keyIsPressed = true;
}

void keyReleased() {

  if (keyCode == 38) { //down arrow

    rPaddleUp = false;
  }
  if (keyCode == 40) { //up arrow

    rPaddleDown = false;
  }

  if (keyCode == 83) {

    lPaddleDown = false;
  }
  if (keyCode == 87) {

    lPaddleUp = false;
  }

  if (keyCode == 32) {

    spacePressed = false;
    
  }
  newInput = true;
  keyIsPressed = false;
}

void mouseReleased() {

  mouseIsClicked = false;

  mouseXpos = 0;
  mouseYpos = 0;

  doubleClick = false;
}


void scaledRect(int x, int y, int wdt, int hgt, int curve) {


  int originalwidth = 1400;
  int originalHeight = 800;


  rect(x*width/originalwidth, y*height/originalHeight, wdt*width/originalwidth, hgt*height/originalHeight, curve);
}

void scaledEllipse(float x, float y, int wdt, int hgt) {

  int originalwidth = 1400;
  int originalHeight = 800;

  ellipse(x*width/originalwidth, y*height/originalHeight, wdt*width/originalwidth, wdt*width/originalwidth);
}

void scaledText(int text, int x, int y, int size) {

  int originalHeight = 800;
  int originalwidth = 1400;

  textSize(size*width/originalwidth);
  text(text, x*width/originalwidth, y*height/originalHeight);
}

void scaledTextS(String text, int x, int y, int size) {

  int originalHeight = 800;
  int originalwidth = 1400;

  textSize(size*width/originalwidth);
  text(text, x*width/originalwidth, y*height/originalHeight);
}

boolean scaledIfNOW(int Ylow, int Yhigh, int Xlow, int Xhigh) { //method to see if the mouse is hovering over a certain area (scaleable)

  int originalHeight = 800;
  int originalwidth = 1400;

  if (mouseY > Ylow * height/originalHeight && mouseY < Yhigh * width/originalwidth && mouseX > Xlow * width/originalwidth && mouseX < Xhigh * width/originalwidth) {

    return true;
  } else {

    return false;
  }
}

boolean scaledIf(int Ylow, int Yhigh, int Xlow, int Xhigh) { //method to see if the mouse is clicked in a certain area (scaleable)

  int originalHeight = 800;
  int originalwidth = 1400;

  if (mouseIsClicked == true && mouseYpos > Ylow * height/originalHeight && mouseYpos < Yhigh * width/originalwidth && mouseXpos > Xlow * width/originalwidth && mouseXpos < Xhigh * width/originalwidth) {

    return true;
  } else {

    return false;
  }
}

/*void unscaledMousePos(int xPos, int yPos) {
 
 int originalwidth = 1400;
 int originalHeight = 800;
 
 unscaledmouseX = mouseX * (originalwidth/width);
 unscaledmouseY = mouseY * (originalHeight/height);
 }*/
