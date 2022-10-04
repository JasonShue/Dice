void setup() {
  size(500, 500);
  noLoop();
  textAlign(CENTER);
}

int dotCount = 0;
Die bob;
void draw() {
  background(150);
  for (int x = 40; x <= 400; x += 90) {
    for (int y = 40; y <=310; y+= 90) {
      bob = new Die(x, y);
      bob.show();
      dotCount += bob.dots;
    }
  }
  fill(0);
  textSize(24);
  text("The total dot count is " + dotCount, 250, 425);
}
void mousePressed() {
  redraw();
  dotCount = 0;
}

class Die {
  int dots, myX, myY;//member variables

  Die(int x, int y) {//constructor
    myX = x;
    myY = y;
    roll();
  }

  void show() {
    fill(162, 124, 66);
    rect(myX, myY, 60, 60);

    fill(255, 255, 255);
    if (dots == 1) {
      circle(myX+30, myY+30, 5);
    }

    if (dots == 2) {
      circle(myX+20, myY+30, 5);
      circle(myX+40, myY+30, 5);
    }

    if (dots == 3) {
      circle(myX+20, myY+30, 5);
      circle(myX+30, myY+30, 5);
      circle(myX+40, myY+30, 5);
    }

    if (dots == 4) {
      circle(myX+20, myY+20, 5);
      circle(myX+20, myY+40, 5);
      circle(myX+40, myY+20, 5);
      circle(myX+40, myY+40, 5);
    }

    if (dots == 5) {
      circle(myX+20, myY+20, 5);
      circle(myX+20, myY+40, 5);
      circle(myX+40, myY+20, 5);
      circle(myX+40, myY+40, 5);
      circle(myX+30, myY+30, 5);
    }

    if (dots == 6) {
      circle(myX+20, myY+15, 5);
      circle(myX+20, myY+30, 5);
      circle(myX+20, myY+45, 5);
      circle(myX+40, myY+15, 5);
      circle(myX+40, myY+30, 5);
      circle(myX+40, myY+45, 5);
    }
  }

  void roll() {
    dots = (int)(Math.random()*6+1);
  }
}
