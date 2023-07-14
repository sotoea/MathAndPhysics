// Variables and Constants
PVector a;
PVector b;
int factor = 100;

// Runs once at the beginning
void setup() {
  size(1280, 980);
  frameRate(60);
  a = new PVector(100, 0);
  b = new PVector(1, 1);
}

// Gameloop, repeating according to FPS
void draw() {

  getMouse();

  background(175);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  push();
  translate(width/2, height/2);
  line(-500, 500, 500, -500);
  strokeWeight(2);
  fill(0, 255, 0);
  stroke(color(255, 0, 0));
  line(0, 0, a.x, a.y);
  circle(a.x, a.y, 8);
  stroke(color(0, 0, 255));
  line(0, 0, b.x, b.y);
  circle(b.x, b.y, 8);
  pop();

  

  drawText();
}

void getMouse(){
  if (mouseButton == LEFT) {
    a.x = mouseX - width/2;
    a.y = mouseY - height/2;
  }

  b.x = mouseX - width/2;
  b.y = mouseY - height/2;

  if (mouseButton == RIGHT) {
    b.normalize();
    b.mult(factor);
  }
}

void drawText(){
  float dot = a.x/100*b.x/100 + a.y/100*b.y/100; // Scale down by 100 for calculation
  fill(color(0));
  textSize(20);
  textAlign(LEFT, CENTER);
  text("Dot Product: " + dot, 10, 10);
  fill(color(0, 0, 255));
  text("x " + b.x/100, 10, 30);
  text("y: " + b.y/100, 10, 50);
  fill(color(255, 0, 0));
  text("x " + a.x/100, 10, 70);
  text("y: " + a.y/100, 10, 90);
}

void mousePressed() {
  if (mouseButton == CENTER) {
    a.x = 100;
    a.y = 0;
  }
}

void keyPressed() {
  if (key == '1') {
    factor = 100;
  } else if (key == '2') {
    factor = 200;
  } else if (key == '3') {
    factor = 300;
  } else if (key == '4') {
    factor = 400;
  } else if (key == '5') {
    factor = 500;
  }
}
