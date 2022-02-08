void setup() {
  size(500, 500);
  background(0);
}
int X=0;
int Y=0;
float A=1;

void draw() {
  clear();
  for (int x=0; x<=10000; x++) {
    rect((x%10*100+X)*A + (width/2)*(1-A), (x/10*100+Y)*A + (height/2)*(1-A), 25*A, 25*A);
    noStroke();
  }
}

void keyPressed() {
  if (key=='d') {
    X=X-10;
  }
  if (key=='a') {
    X=X+10;
  }
  if (key=='w') {
    Y=Y+10;
  }
  if (key=='s') {
    Y=Y-10;
  }
  if (key=='z') {
    A*=1.01;
  }
  if(key=='x'){
   A*=0.99;
  }
  
}
