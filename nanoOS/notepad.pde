int noteState = 0;

String notes[] = new String[5];

String typing = "";

boolean newInput = false;

boolean keyIsPressed = false;

PrintWriter output;

void notepad() {

  background(50);
  fill(#FFFFFF);
  textSize(32);
  
  String[]notes = loadStrings("nanoOSnotes.txt");
  output = createWriter("nanoOSnotes.txt"); 
  
  if(noteState == 0){
   
    if(notes.length == 0){
    
    scaledTextS("No notes yet",600,400,32);
    
    }
    
    else{
    scaledTextS("There are " + notes.length + " notes",100,200,60);
    
    for(int i = 0;i<notes.length;i++){
      
     scaledTextS(notes[i],100,300+i*100,30); 
      
    }
    }
    fill(#000000);
    rect(1200,500,200,100,30);
    fill(#FFFFFF);
    scaledTextS("Add note",900,400,20);
    if(scaledIfNOW(400,500,900,1000)){
      
      //change colour 
      
    }
    if(scaledIf(400,500,900,1000)){
      
      noteState = 2;
      
    }
    
    
  }
  
  
  else if(noteState == 1){
    
    
    //read existing note
    
  }
  else if(noteState == 2){
    
    
   //note writing screen
   scaledTextS("Start Typing",500,500,50);
   fill(40,40,40);
   scaledRect(150,100,800,300,20);
   stroke(#FFFFFF);
   scaledTextS(typing,500,600,20);
   println(typing);
   
   if (keyIsPressed && key < 58 && key > 47 && newInput == true) {

      typing = typing + key;
      newInput = false;
    }
   //save button
   //append to .txt
    
  }

  exitButton();
}
