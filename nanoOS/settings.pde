JSONObject saved_settings;

void setting() {
  
  saved_settings = loadJSONObject("user_settings.json");
  
  int backgroundID = saved_settings.getInt("background");
  
  int selectedBG = 0;

  background(50);
  fill(#FFFFFF);
  textSize(50);
  
  text("Background : ", 300,300);
  
  textSize(28);
  
  
  for(int i = 0;i<3;i++){
    
    fill(#000000);
    stroke(#FFFFFF);
    
    if(selectedBG==i){
     
      //big outline
     
    }
    else{
    
      //small outline
      
    }
  
    rect(700+200*i,260,150,50);
    
    fill(#FFFFFF);
    
    switch(i){
      case 0:
        text("  Epic",730+200*i,295);
        break;
      case 1:
        text("Simple", 730+200*i,295);
        break;
      case 2:
        text("Classic",730+200*i,295);
        break;
    }
    
  }

  exitButton();
}
