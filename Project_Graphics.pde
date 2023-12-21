//declaring vars
Player p1;

//variable
PImage  grass,deer,grass2;
int state;


void setup(){
size(600,600);
textAlign(CENTER);
textSize(25);
grass =loadImage("D:/Dowload/grass.png");
grass2 =loadImage("D:/Dowload/grass2.jpg");
deer =loadImage("D:/Dowload/bait.png");
//initialize vars
p1 = new Player(width/2,height/2,40,40);
state = 1 ;
}

void draw(){
 if(state == 1){
  grass2.resize(600,600);
  background(grass2);
  fill(255);
  textAlign(CENTER);
  textSize(50);
  text("The Deer Survival ", width/2, 250);
  textSize(20);
  text("\n Press Space For Start ", width/2, 250);
  image(deer,200,300,200,200);
 }
 
    if(keyCode == 32){
  state = 2;
  }
 
 if(state == 2){
grass.resize(600,600);
background(grass);

fill(217, 28, 28);
textAlign(CENTER);
textSize(25);
text("Score now : " + p1.score,80, 30);

p1.game();
p1.move();
p1.gameover();
p1.reset();
p1.win();
 }
}
void keyPressed(){
if(key == 'a'){
  p1.MoveLeft = true;
  }
if(key == 'd'){
  p1.MoveRight = true;
 
  }
if(key == 'w'){
  p1.MoveUp = true;
  }
if(key == 's'){
  p1.MoveDown = true;
  }
  if(keyCode == 37){
  p1.MoveLeft = true;
  }
if(keyCode == 39){
  p1.MoveRight = true;
 
  }
if(keyCode == 38){
  p1.MoveUp = true;
  }
if(keyCode == 40){
  p1.MoveDown = true;
  }

}
void keyReleased(){
  if(key == 'a'){
  p1.MoveLeft = false;
  }
if(key == 'd'){
  p1.MoveRight = false;
  }
if(key == 'w'){
  p1.MoveUp = false;
  }
if(key == 's'){
  p1.MoveDown = false;
  }
  
  if(keyCode == 37){
  p1.MoveLeft = false;
  }
if(keyCode == 39){
  p1.MoveRight = false;
 
  }
if(keyCode == 38){
  p1.MoveUp = false;
  }
if(keyCode == 40){
  p1.MoveDown = false;
  }
}
