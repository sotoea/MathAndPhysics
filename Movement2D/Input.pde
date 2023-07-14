void keyCheck() {
  if (Akey) angle -= 4;
  if (Dkey) angle += 4;
}

void keyPressed() {
  if (key == 'a') Akey = true;
  if (key == 'd') Dkey = true;
  if (key == 'w') speed++;
  if (key == 's') speed--;
}

void keyReleased() {
  if (key == 'a') Akey = false;
  if (key == 'd') Dkey = false;
}
