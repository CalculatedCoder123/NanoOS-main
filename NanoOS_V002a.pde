// V 0.0.2a
// Fixed infinite credits bug.
// Added random background generator.
// Added more backgrounds
PImage img;

float randback;
float randback1;
float randback2;
float randback3;
float randback4;
float randback5;
float randback6;
float randback7;

int anim = 0;

float startAngle = 0;
float angleVel = 0.1;

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

println("V 0.0.2a");
  println("Nano OS");
  println("A project by CaptainCoder and CalculatedCoder123");
  print("Nature Of Code By Daniel Shiffman was used for one of the background animations on the home screen.");
  
  img = loadImage("Background_3.jpg");
  
  randback = random(1);
  
  randback1 = random(255);
  randback2 = random(255);
  randback3 = random(255);
  randback4 = random(255);
randback5 = random(255);
randback6 = random(255);
randback7 = random(255);

if (randback < 0.5){
  
  anim = 1;
  
  }
  else{

    
  image(img,0,0);

 
  
  }

}


void draw() {
  
  if(anim==1){
    
      noStroke();
  
  background(17);

   
startAngle += 0.02;
float angle = startAngle;
 
  for (int x = 0; x <= width; x += 24) {
    float y = map(sin(angle),-1,1,0,height);
    fill(72);
    ellipse(x,y,100,100);
    angle += angleVel;
  } 
    
  }
  
  
  
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


void loop(){
 
}




















 
  
  

  
  
 
  
 


 

 
