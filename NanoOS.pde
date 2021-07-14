 //Release notes
//v.0.0.1 first beta version
//v.0.0.2 changed background, made code more clean
//v.0.1.0 added beta mouseclick function
//v.0.1.1 improved splash screen

void sttings(){
    println("Settings");
}

int size_text = 22;
int size = 100;
int curve = 15;
int row1 = 30;
int row2 = 175;
int row3 = 320;
int row4 = 465;
///////////////

  ellipse(500,30,600,600);
  fill(#FF3333);
  ellipse(100,210,455,455);
  fill(#44FE36);
  ellipse(800,560,700,700);
  fill(#0029FE);
  ellipse(50,700,800,800);
  fill(#FBFE00);
  ellipse(500,300,500,500);
  ///////////////////////////////////////
  fill(#03DBFF);
  rect(column1, row1, size, size, curve);
  fill(0,0,0);
  textSize(size_text);
  text("settings", (column1+8), (row1+60));
  fill(#F200EF);
  rect(column2, row1, size, size, curve);
  fill(0,0,0);
  textSize(size_text);
  text("internet", (column2+8), (row1+60));
  fill(#F20000);
  rect(column3, row1, size, size, curve);
  fill(0,0,0);
  textSize(size_text);
  text("notepad", (column3+8), (row1+60));
  fill(#00F2C4);
  rect(column4, row1, size, size, curve);
  fill(0,0,0);
  textSize(size_text);
  text("calendar", (column4+6), (row1+60));
  ////////////////////////////////
  fill(#1D298E);
  rect(column1, row2, size, size, curve);
  fill(0,0,0);
  textSize(size_text);
  text("calendar", (column4+6), (row1+60));
  fill(#CDD31E);
  rect(column2, row2, size, size, curve);
  fill(0,0,0);
  textSize(size_text);
  text("email", (column1+18), (row2+60));
  fill(#752181);
  rect(column3, row2, size, size, curve);
  fill(0,0,0);
  textSize(size_text-2);
  text("app store", (column2+4), (row2+60));
  fill(#F79F19);
  rect(column4, row2, size, size, curve);
  fill(0,0,0);
  textSize(size_text);
  text("contacts", (column3+8), (row2+60));
  ////////////////////////////////
  fill(#901D13);
  rect(column1, row3, size, size, curve);
  fill(0,0,0);
  textSize(size_text);
  text("clock", (column4+20), (row2+60));
  fill(#175D11);
  rect(column2, row3, size, size, curve);
  fill(0,0,0);
  textSize(size_text);
  text("weather", (column1+10), (row3+60));
  fill(#9BFFF9);
  rect(column3, row3, size, size, curve);
  fill(0,0,0);
  textSize(size_text-2);
  text("messages", (column2+4), (row3+60));
  fill(#FFA89B);
  rect(column4, row3, size, size, curve);
  fill(0,0,0);
  textSize(size_text);
  text("news", (column3+18), (row3+60));
  ////////////////////////////////
  fill(#F5ECEB);
  rect(column1, row4, size, size, curve);
  fill(0,0,0);
  textSize(size_text-4);
  text("flappy bird", (column4+4), (row3+60));
  fill(#0D0403);
  rect(column2, row4, size, size, curve);
  fill(0,0,0);
  textSize(size_text);
  text("pong", (column1+18), (row4+60));
  fill(#FFDA74);
  rect(column3, row4, size, size, curve);
  fill(240,240,240);
  textSize(size_text);
  text("maps", (column2+18), (row4+60));
  fill(#FFCEE6);
  rect(column4, row4, size, size, curve);
  fill(0,0,0);
  textSize(size_text-6);
  text("crossy road", (column3+4), (row4+60));
  /////////////////////////////////////////
  /////////////////////////////////////////
  fill(0,0,0);
  textSize(size_text-2);
  text("calculator", (column4+3), (row4+60));
}
void loop(){
if (mousePressed==true && mouseButton == LEFT ){
    println("settings");
  }
}
}
}
