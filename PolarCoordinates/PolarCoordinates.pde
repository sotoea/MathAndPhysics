// Variables and Constants
float angle = 0;
float r = 0;
float angle2 = 0;
float r2 = 0;

int i = 2;

boolean isPrime(int n){
  if(n==0||n==1) return false;
  if(n==i) return true;
  if(n%i==0) return false;
  i++;
  return isPrime(n);
}


// Runs once at the beginning
void setup() {
  size(800, 600);
  frameRate(144);
  background(100);
}

// Gameloop, repeating according to FPS
void draw() {
  noStroke();


  translate(width/2, height/2);

  fill(10, 10, r);
  circle(r * cos(radians(angle)), r * sin(radians(angle)), 5);
  fill(10, r, 10);
  circle((r2 + cos(radians(angle2)) * 15) * cos(radians(angle2)), (r2 - cos(radians(angle2)) * 15) * sin(radians(angle2)), 5);

  r += 0.1;
  angle += 2;
  r2 += 0.1;
  angle2 -= 2;
}
