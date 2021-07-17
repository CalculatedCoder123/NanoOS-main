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
