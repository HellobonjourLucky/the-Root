float sw, alpha;
float yStep = 10;
float arcSize = 200;

void setup() {
  size(800, 800);
  background(#eeeeee);
}

void draw() {
  background(#eeeeee);
  
  mouseX = constrain(mouseX, 10, width);
  mouseY = constrain(mouseY, 10, height);
  
  yStep = mouseY;
  arcSize = mouseX;
  
  //stroke(10);
  noFill();
  //float arcL = map(mouseX, 0, width, 0, TWO_PI);
  
  for (float y=-arcSize; y<height+arcSize; y+=yStep){
    sw = map(sin(radians(y+alpha)), -1, 1, 2, yStep);
    strokeWeight(sw);
    for (float x1= arcSize/2; x1<width+arcSize; x1+=arcSize){
      circle(x1, y, arcSize/2);
    }
    sw = map(sin(radians(y+alpha)), -1, 1, 2, yStep);
    strokeWeight(sw);
    for (float x2=0; x2<width+arcSize; x2+=arcSize){
      circle(x2, y, arcSize/2);
    }
  }
  alpha++;
}

//void keyPressed() {
//   redraw();
//}
