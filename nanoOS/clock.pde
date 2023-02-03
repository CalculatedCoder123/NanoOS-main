int second;
int minute;
int hour;
int day;
int month;
String monthName;
int year;

String months[] = {"January", "Febuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};

float time;
float timerStart;
boolean run = false;


void clock() {

  background(50);
  fill(#FFFFFF);

  second = second();
  minute = minute();
  hour = hour();
  day = day();
  month = month();
  year = year();

  monthName = months[month - 1];

  textSize(50);
  text(monthName, 210, 300);
  text(str(day) + ",", 480, 300);
  text(year, 580, 300);

  text(hour, 330, 500);
  text(":", 400, 500);
  text(minute, 430, 500);
  text(":", 500, 500);
  text(second, 530, 500);
  
  text("Press the spacebar to start/stop", 1050, 900);

  line(width/2, height - 100, width/2, 100);

  if (run == true) {

    time = millis() - timerStart;
    
  }

  text(time/1000, 1350, 600);

  textSize(20);
  text("H", 350, 540);
  text("M", 450, 540);
  text("S", 550, 540);



  textSize(100);

  text("STOPWATCH", 1150, 300);



  exitButton();
}
