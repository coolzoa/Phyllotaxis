float numberDots = 0;
float c = 4;

void setup() {
  size(400,400);
  colorMode(HSB);
  background(0);
}

void draw() {
  
  float angle = numberDots * 137.5;
  float radius = c * sqrt(numberDots);
  
  float x = radius * cos(radians(angle)) + width/2;
  float y = radius * sin(radians(angle)) + height/2;
  
  fill((angle - radius)%255, 255, 255);
  
  noStroke();
  ellipse(x,y, 4, 4);
  
  numberDots++;
}
