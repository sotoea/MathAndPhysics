// Variables and Constants
PVector[] shape;
PVector[] transformation;

float angle = 0;

// Runs once at the beginning
void setup(){
  size(800, 600);
  frameRate(60);
  
  shape = new PVector[]{
    new PVector(-0.7, 1),
    new PVector(1, 1),
    new PVector(3, -1),
    new PVector(1.7, -0.5),
    new PVector(2, -1),
    new PVector(-1, -2)
  };
  
  transformation = new PVector[]{
    new PVector(cos(angle), -sin(angle)),
    new PVector(sin(angle), cos(angle))
  };
}

// Gameloop, repeating according to FPS
void draw(){
  rotationMatrix();
  if(key == 'm'){
    mirrorAlongX();
  }
  randomTransform();
  background(100);
  push();
  translate(width/2, height/2);
  
  beginShape();
  for(int i = 0; i < shape.length; i++){
    vertex(50*shape[i].x * transformation[0].x + 50*shape[i].y * transformation[0].y, 
           50*shape[i].x * transformation[1].x + 50*shape[i].y * transformation[1].y
           );
  }
  endShape(CLOSE);

  pop();
}

void keyPressed(){
  if(key == 'w'){
    angle += PI/15;
  }
  if(key == 's'){
    angle -= PI/15;
  }
}

void rotationMatrix(){
  transformation = new PVector[]{
    new PVector(cos(angle), -sin(angle)),
    new PVector(sin(angle), cos(angle))
  };
}

void mirrorAlongX(){
  transformation = new PVector[]{
    new PVector(1, 0),
    new PVector(0, -1)
  };
}

void randomTransform(){
  transformation = new PVector[]{
    new PVector(1, cos(angle)),
    new PVector(0.2, -1)
  };
}
