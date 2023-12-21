class Player{
  
  //Variables
  PImage  deer,apple,tiger;
  int x;  // x
  int y;  // y
  int w; // width
  int h; // height
  public int score ;
  int speed ;  //<>//
 
  int low = 40; //low of random
  int high = 550; //high of random
  
  boolean MoveLeft;
  boolean MoveRight;
  boolean MoveUp;
  boolean MoveDown;
 
  int foodX = 300,foodY= 100; // apple x and y
  
  int tigerx = 300; //tiger x 
  int tigery = 500; //tiger y

  // Constur
  Player(int startX,int startY,int startW,int startH){
  x = startX;
  y = startY; //<>//
  w = startW;
  h = startH;

   
  MoveLeft = false;
  MoveRight = false;
  MoveUp = false;
  MoveDown = false;
 
  speed = 2 ;
  
  }
    
  void game(){
   
    deer =loadImage("D:/Dowload/bait.png");
    apple =loadImage("D:/Dowload/Apple.png");
    tiger =loadImage("D:/Dowload/Tiger.png");
    if(x == foodX  && y == foodY){
    foodX = (int)random(low,high);
    foodY = (int)random(low,high);
    score++;
  
     if( ( foodX  % 2 ) == 0 ) {
        foodX = foodX + 0;
    }
     else {
            foodX++;
          }
        if(foodY % 2 == 0 ) {
            foodY = foodY + 0;
        } else {
          foodY++;
        }
    }
   imageMode(CENTER);
   image(deer, x, y,110,110);
   image(apple,foodX,foodY,w,h);
   image(tiger,tigerx,tigery,80,80);
  
   println("x :" + x + "  y:" + y);
   println("foodX:" + foodX);
   println("foodY:" + foodY);
   println("tigerx:" + tigerx);
   println("tigery:" + tigery);
   println("score:" + score);
   println();
 }
   
  void move(){
  if(MoveLeft == true){
   x -= speed ;
  }
  if(MoveRight == true){
   x += speed ;
  }
  if(MoveUp == true){
   y -= speed ;
  }
  if(MoveDown == true){
   y += speed ;
    }
  }

  void gameover(){
    
  if( x >= 575){
    x = 575;
    fill(217, 28, 28); 
    textSize(30); 
    textAlign(CENTER); 
    text("GAME OVER \n Your Score is: "+ score +"\n Press ENTER for strat again", width/2, height/3);
    speed =0;
    tigerx = 300;
    tigery = 500;
   }
  if( y >= 570){
  y = 570;
    fill(217, 28, 28); 
    textSize(30); 
    textAlign(CENTER); 
    text("GAME OVER \n Your Score is: "+ score +"\n Press ENTER for strat again", width/2, height/3);
    speed =0;
    tigerx = 300;
    tigery = 500;
  }
  if( x <= 22){
  x = 22;
    fill(217, 28, 28); 
    textSize(30); 
    textAlign(CENTER); 
    text("GAME OVER \n Your Score is: "+ score +"\n Press ENTER for strat again", width/2, height/3);
     speed =0;
     tigerx = 300;
     tigery = 500;
  }
  if( y <= 40){
  y = 40;
    fill(217, 28, 28); 
    textSize(30); 
    textAlign(CENTER); 
    text("GAME OVER \n Your Score is: "+ score +"\n Press ENTER for strat again", width/2, height/3);
    speed =0;
    tigerx = 300;
    tigery = 500;
    }
    if(tigerx > x){
     tigerx -=1;
   }
    if(tigery > y){
     tigery -=1;
   }
     if(tigerx < x){
     tigerx +=1;
   }
    if(tigery < y){
     tigery +=1;
   }
   if(tigerx == x && tigery == y){
    fill(217, 28, 28); 
    textSize(30); 
    textAlign(CENTER); 
    text("GAME OVER \n Your Score is: "+ score +"\n Press ENTER for strat again", width/2, height/3);
    speed =0;
    
   }
  }
 
  void reset(){
   if(keyCode == 10){
    x = width/2;
    y = height/2;
    
    foodX = 300;
    foodY = 100;
    score = 0;
    speed = 2;
    tigerx = 300;
    tigery = 500;
 }
}

void win(){
if(score == 2){
      x = width/2;
      y = height/2;
     foodX = -15;
     foodY = -15;
     tigerx = 300;
     tigery = 500;
    
    textSize(100); 
    textAlign(CENTER); 
    text("Win !!!", width/2, height/3);
    textSize(30); 
    textAlign(CENTER); 
    text("\n Press ENTER for strat again", width/2, height/3);
    }
}
  
}




  
