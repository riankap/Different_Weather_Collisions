//different buttons different weather with different sounds//
PFont f;
PImage raindrop;
int r1W = 100, r1H = 100, r1X = 50, r1Y = 150;
int r2W = 100, r2H = 300, r2X = 100, r2Y = 100;

void setup() {
  size(800, 800);

  raindrop = loadImage("raindrop.png");
  // ellipseMode(CENTER);
}
void draw()
{
  background(0);

  fill(255, 255, 255);
  rect(r1X, r1Y, r1W, r1H);
  rect(r2W, r2H, r2X, r2Y);
  ellipse(500, 200, 100, 100);
  ellipse(700, 200, 100, 100);

  textSize(50); 
  fill(167, 242, 250);
  text("Rain", 50, 100); 
  fill(249, 250, 15);
  text("Sunny", 220, 100); 
  fill(193, 193, 187);
  text("Cloudy", 420, 100); 
  fill(255);
  text("Windy", 620, 100); 

  if (mouseX > r1X && mouseX < r1X+r1W && mouseY < r1Y + r1H && mouseY > r1Y)
  {
    image(raindrop, 0, 0);
    raindrop.resize(500, 500);
  }
}