float posX = 300;
float posY = 300;
float speed = 2;
float angle = 0;
int radius = 25;
boolean Akey = false;
boolean Dkey = false;

void setup() {
  size(600, 600);
  frameRate(60);
}

void draw() {
  background(0);
  keyCheck();
  stroke(50, 255, 20);
  noFill();
  circle(posX, posY, radius * 2);

  float x = posX + cos(radians(angle)) * radius;
  float y = posY + sin(radians(angle)) * radius;

  circle(x, y, 10);

  posX += cos(radians(angle)) * speed;
  posY += sin(radians(angle)) * speed;

  if (posX > width + radius) posX = -25;
  else if (posX < -25) posX = width + 25;
  if (posY > height + radius) posY = -25;
  else if (posY < -25) posY = height + 25;
}
