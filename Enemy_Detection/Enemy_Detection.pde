PVector player = new PVector(0,1);
float fov = 30;

ArrayList<PVector> enemies = new ArrayList();

void setup(){
  size(500,500);
  
  enemies.add(new PVector(100, 200));
  enemies.add(new PVector(-50, 150));
  enemies.add(new PVector(200, 20));
  enemies.add(new PVector(125, -200));
  enemies.add(new PVector(-200, 150));
  enemies.add(new PVector(-170, -210));
}

void draw(){
  pushMatrix();
  scale(1,-1);
  translate(0, -height);
  translate(width/2, height/2);
  
  background(255);
  
  stroke(200);
  float leftLineX = 500 * cos(radians(90 + fov/2));
  float leftLineY = 500 * sin(radians(90 + fov/2));
  line(0, 0, leftLineX, leftLineY);
  
  float rightLineX = 500 * cos(radians(90 - fov/2));
  float rightLineY = 500 * sin(radians(90 - fov/2));
  line(0, 0, rightLineX, rightLineY);
  
  fill(255,0,0);
  stroke(0);
  circle(0,0,40);
  
  for(PVector e : enemies){
    float halfAngle = radians(fov/2);
    float playerToEnemyAngle = acos(player.dot(e) / (player.mag() * e.mag()));
    if(playerToEnemyAngle <= halfAngle){
      fill(200);
    } else {
      fill(0);
    }
    circle(e.x, e.y, 20);
  }
  
  popMatrix();
}

void keyPressed(){
  if(key=='w'){
    fov++; 
  }
    if(key=='s'){
    fov--; 
  }
}
