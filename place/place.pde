PImage img, img1;
boolean isOne = true, isTwo;
int x = -100, x2 = -100;
void setup() {
  size(500, 500, P2D);
  img = loadImage("data/thing.gif");
  img1 = loadImage("data/thing.gif");
  imageMode(CENTER);
  background(0);
}

void draw() {
  background(0);
  rect(150, height/4, 75, 3 * height/4);
  rect(275, height/4 + 25, 75, 3 * height/4 - 25);
  image(img, x, height/3);
  image(img1, x2, height/3 + 25);
  if (isOne) {
    x++;
  }
  if (x == 150) {
    img = loadImage("data/images.jpg");
    isTwo = true;
    isOne = false;
  }
  if (x2 == 275) {
    img1 = loadImage("data/images.jpg");
    isTwo = false;
  }
  if (isTwo) {
    x2++;
  }
}