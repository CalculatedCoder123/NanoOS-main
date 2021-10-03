// v 0.1.0

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

void setup (){
size(1927,1080);
background(50);

  println("V 0.1.0");
  println("Nano OS");
  println("A project by CaptainCoder and CalculatedCoder123");
  
  img = loadImage("Background_3.jpg");
  
}

void draw() {
  
  if(state == 0){

image(img,0,0);

fill(250,8,8);
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
fill(0,0,0);

text("CALENDAR", column1+35, row1+110);
text("PONG", column2+62, row1+110);
text("SETTINGS", column3+45, row1+110);
text("CLOCK", column1+55, row2+110);
text("APP STORE", column2+40, row2+110);
text("NOTEPAD", column3+40, row2+110);

fill(250,8,8);
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
fill(0,0,0);

text("CALENDAR", column1+35, row1+110);
text("PONG", column2+62, row1+110);
text("SETTINGS", column3+45, row1+110);
text("CLOCK", column1+55, row2+110);
text("APP STORE", column2+40, row2+110);
text("NOTEPAD", column3+40, row2+110);

  }
  if(state==1){
    
   calendar();
    
  }
  
  if(state == 2){
   
    pong();
    
  }
  
  if(state==3){
    
   setting(); 
    
  }
  
  if(state == 4){
    
   clock(); 
    
  }
  
  if(state == 5){
   appstore(); 
    
  }
  
  if(state == 6){
   
    notepad();
    
  }
}
void mousePressed(){
 
  mouseXpos = mouseX;
  mouseYpos = mouseY;
  
  if(state==0){
  iconClicked();
  }
  
  else{
   
    if(mouseXpos < 200 && mouseYpos < 100){
     
      state = 0;
      
    }
    
  }
}


void iconClicked(){
  
  if(mouseXpos > column1 && mouseXpos < column1 + 200){
   if(mouseYpos > row1 && mouseYpos < row1+200){ 
    
     state = 1;
     
   }
  }
  
  if(mouseXpos > column2 && mouseXpos < column2 + 200){
    if(mouseYpos > row1 && mouseYpos < row1+200){
  
    state = 2;
      
    }
  }
  
  if(mouseXpos > column3 && mouseXpos < column3 + 200){
   if(mouseYpos > row1 && mouseYpos < row1+200){ 
    
     state = 3;
     
   }
  }
  
  if(mouseXpos > column1 && mouseXpos < column1 + 200){
   if(mouseYpos > row2 && mouseYpos < row2+200){ 
    
     state = 4;
     
   }
  }
  
  if(mouseXpos > column2 && mouseXpos < column2 + 200){
   if(mouseYpos > row2 && mouseYpos < row2+200){ 
    
     state = 5;
     
   }
  }
  
  if(mouseXpos > column3 && mouseXpos < column3 + 200){
   if(mouseYpos > row2 && mouseYpos < row2+200){ 
    
     state = 6;
    
   }
  }
  
}
void exitButton(){
 
   fill(#000000);
   rect(0,0,200,100,10);
   
   fill(#FFFFFF);
   text("EXIT", 60, 50);
  
}


void calendar(){
 
   background(50);
   fill(#FFFFFF);
   textSize(32);
   text("Coming soon", 800,450);
   
   exitButton();
  
}

void pong(){
  
   background(50);
   fill(#FFFFFF);
   textSize(32);
   text("Coming soon", 800,450);
   
   exitButton();  
}

void setting(){
  
   background(50);
   fill(#FFFFFF);
   textSize(32);
   text("Coming soon", 800,450);
   
   exitButton();
  
}

void clock(){
 
   background(50);
   fill(#FFFFFF);
   textSize(32);
   text("Coming soon", 800,450);
   
   exitButton();
  
}

void appstore(){
  
   background(50);
   fill(#FFFFFF);
   textSize(32);
   text("Coming soon", 800,450);
   
   exitButton();
  
}

void notepad(){
  
   background(50);
   fill(#FFFFFF);
   textSize(32);
   text("Coming soon", 800,450); 
  
   exitButton();
  
}
