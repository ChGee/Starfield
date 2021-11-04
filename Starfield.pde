class Particle {
  double mySpeed, angle;
  float myX, myY;
  Particle(){
     myX = mouseX;
     myY = mouseY;
     angle = (double)(Math.random()*2)*Math.PI;
     mySpeed = (double)(Math.random() *5);
  }
  void move() {
    myX += Math.cos(angle)*mySpeed;
    myY += Math.sin(angle)*mySpeed;
    if(myY<201)
      myX -= 2;
    if(myY>199)
      myX += 2;
     if(myX<201)
      myY += 2;
    if(myX>199)
      myY -= 2;
    
  }
  void show() {
     ellipse(myX, myY, 5, 5);
     if (mousePressed){
       myX= mouseX;
       myY=mouseY;
     }
  }
}

class oddBallParticle extends Particle{
   oddBallParticle(){
     myX = mouseX;
     myY = mouseY;
   }
    void move() {
      myX += (int)(Math.random()*5)-2;
      myY += (int)(Math.random()*5)-2;
      if (mousePressed){
       myX= mouseX;
       myY=mouseY;
     }
  }
  void show() {
    
     ellipse(myX, myY, 20, 20);
  }
}
Particle [] arr = new Particle[1000];
void setup() {
   background(0);
   size(400, 400);
   noStroke();
   for(int i=0; i<1; i++)
     arr[i] = new oddBallParticle();
   for(int i=1; i< arr.length; i++)
     arr[i] = new Particle();
}

void draw() {
  background(0);
  for(int i=0; i< arr.length; i++){
     arr[i].move();
     fill(0,(int)(Math.random()*256),(int)(Math.random()*256));
     arr[i].show();
     
  }
}
