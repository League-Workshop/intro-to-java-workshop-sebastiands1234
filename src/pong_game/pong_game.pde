int x = 0;
int y = 0;
int speedx =10;
int speedy =10;
void setup(){
size(500,500);
}
void draw(){
background(#000000);
fill(#030303);
stroke(#00FC49);
ellipse(x, y, 50, 50);
x+=speedx;
y+=speedy;
if(x > width){
  speedx = -speedx;
}
if(x < 0){
  speedx = -speedx;
}
if(y > height){
  speedy = -speedy;
}
if(y < 0){
  speedy = -speedy;
}
rect(mouseX, 450, 100, 25);
boolean i = intersects(x, y, mouseX, 450, 100);
if (i == true ){
speedy = -speedy;
}
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY,
int paddleLength) {
    if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
        return true;
    else
        return false;
}
