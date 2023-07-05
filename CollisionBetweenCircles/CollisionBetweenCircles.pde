
float x1, x2, y1, y2, r1, r2;
boolean growing = true;
float timeSinceStart = 0;

void setup(){
  size(800,600); 
  x1 = 100;
  x2 = 100;
  y1 = 300;
  y2 = 300;
  r1 = 100;
  r2 = 50;
}

void draw(){
  x1 = mouseX;
  y1 = mouseY;
  
  float sumOfRadius = r1 + r2;
  float distanceBetweenCircles = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
  
  if(growing){
    r2++;
    if(r2 > 100){
      growing = false;
    }
  }else{
    r2--;
    if(r2 < 50){
      growing = true;
    }
  }
  
  r1 = 200 + cos(timeSinceStart/2) * 50;
  
  background(50);
  fill(255);
  if(distanceBetweenCircles <= sumOfRadius){
    fill(255, 0, 0);
  }
  circle(x1, y1, r1 * 2);
  circle(x2, y2, r2 * 2);
  
  timeSinceStart += 0.1;
}
