int startX = (int)(Math.random() * 300);
int startY = 0;
int endX = startX;
int endY;

void setup()
{
  size(300,300);
  background(0);
}

void draw()
{
  clouds();
  lightning();
  treeTrunk();
  treeOneLeaves();
  treeTwoLeaves();
  treeThreeLeaves();
}

void mousePressed()
{
  startX = (int)(Math.random() * 300);
  startY = 0;
  endX = startX;
  endY = 0;
  fill(0, 180);
  noStroke();
  rect(0, 0, 300, 300);
}

void clouds(){
  noStroke();
  int xCoord = -35;
  for (int i = 0; i < 10; i++){
    ellipse(xCoord, 0, 100, 80);
    fill(249, 250, 0);
    xCoord += 70;
  }
}

void lightning(){
  while (endY < 230){
    stroke((int)(Math.random() * 250), (int)(Math.random() * 250), (int)(Math.random() * 250));
    strokeWeight(9);
    startX = endX;
    endX = (startX + (int)(Math.random() * -60 + 30));
    endY = startY + ((int)(Math.random() * 60));
    if (endX < 100){
      if (endY > 200){
        endX = 72;
      }
    }
    else if (endX < 200){
      if (endY > 200){
        endX = 152;
      }
    }
    else {
      if (endY > 200){
        endX = 242;
      }
    }
    line(startX, startY, endX, endY);
    startY = endY;
  }
}

void treeTrunk(){
  noStroke();
  fill(129, 109, 29);
  rect(55, 250, 30, 100);
  rect(135, 250, 30, 100);
  rect(225, 250, 30, 100);
}

void treeOneLeaves(){
  int treeOneXCoordOne = 55;
  for (int i = 0; i < 7; i++){
    ellipse(treeOneXCoordOne, 250, 5, 10);
    fill(18, 162, 11);
    treeOneXCoordOne += 5;
  }
  int treeOneXCoordTwo = 50;
  for (int i = 0; i < 9; i++){
    ellipse(treeOneXCoordTwo, 240, 5, 10);
    fill(18, 162, 11);
    treeOneXCoordTwo += 5;
  }
  int treeOneXCoordThree = 55;
  for (int i = 0; i < 7; i++){
    ellipse(treeOneXCoordThree, 230, 5, 10);
    fill(18, 162, 11);
    treeOneXCoordThree += 5;
  }
}

void treeTwoLeaves(){
  int treeTwoXCoordOne = 135;
  for (int i = 0; i < 7; i++){
    ellipse(treeTwoXCoordOne, 250, 5, 10);
    fill(18, 162, 11);
    treeTwoXCoordOne += 5;
  }
  int treeTwoXCoordTwo = 130;
  for (int i = 0; i < 9; i++){
    ellipse(treeTwoXCoordTwo, 240, 5, 10);
    fill(18, 162, 11);
    treeTwoXCoordTwo += 5;
  }
  int treeTwoXCoordThree = 135;
  for (int i = 0; i < 7; i++){
    ellipse(treeTwoXCoordThree, 230, 5, 10);
    fill(18, 162, 11);
    treeTwoXCoordThree += 5;
  }
}

void treeThreeLeaves(){
  int treeThreeXCoordOne = 225;
  for (int i = 0; i < 7; i++){
    ellipse(treeThreeXCoordOne, 250, 5, 10);
    fill(18, 162, 11);
    treeThreeXCoordOne += 5;
  }
  int treeThreeXCoordTwo = 220;
  for (int i = 0; i < 9; i++){
    ellipse(treeThreeXCoordTwo, 240, 5, 10);
    fill(18, 162, 11);
    treeThreeXCoordTwo += 5;
  }
  int treeThreeXCoordThree = 225;
  for (int i = 0; i < 7; i++){
    ellipse(treeThreeXCoordThree, 230, 5, 10);
    fill(18, 162, 11);
    treeThreeXCoordThree += 5;
  }
}
