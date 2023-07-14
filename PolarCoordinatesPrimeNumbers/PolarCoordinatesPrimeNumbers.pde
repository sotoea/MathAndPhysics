// Variables and Constants
float angle = 0;
float r = 0;
float angle2 = 0;
float r2 = 0;

int i = 2;
int number = 1;

boolean startitup = false;
float offset = 0;
int polarity = 1;

color c = color(0, 255, 0);

// Runs once at the beginning
void setup() {
  size(600, 600);
  frameRate(2222);
  background(0);

  
}

// Gameloop, repeating according to FPS
void draw() {
  if(!startitup) return;

  if(number > 23000){ //31000
    number = 1;
    offset += PI/7.5;
    polarity *= -1;
  }
  i = 2;
  polarCoordinates(color(0, 255, 0, 100), 1);
  if(isPrime(number)){
    polarCoordinates(color(255, 0, 0), 1);
  }
  
  number+=1;
  
}

void keyPressed(){
  startitup = true;

}

void polarCoordinates(color c, int p){
  noStroke();
  r = number;
  angle = number;
  push();
  translate(width/2, height/2);
  fill(c);
  int radius = 2;

  circle(r/50 * cos(angle + offset) * polarity * p, r/50 * sin(angle + offset), radius);
  pop();
}

boolean isPrime(int n){
  if(n==0||n==1) return false;
  if(n==i) return true;
  if(n%i==0) return false;
  i++;
  return isPrime(n);
}
