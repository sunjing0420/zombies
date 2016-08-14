int step = 0;
int x = 0;
int y = 0;


void setup() {
  size(500, 100);
  background(255);
  println("Hey!Zombies!!");
  println(" ");
  println("Do you want to eat a brain!!?");
  println("Press y for Yes, n for No");
}

void draw() {
  drawZombies();
}

void drawZombies() {
  noStroke();
  fill(120, 130, 110);
  rect(60+x, 20, 25, 5);
  rect(50+x, 25, 40, 5);
  rect(45+x, 30, 50, 5);
  rect(40+x, 35, 55, 15);
  rect(45+x, 50, 50, 5);
  rect(45+x, 55, 45, 5);
  rect(50+x, 60, 35, 5);
  rect(55+x, 65, 20, 5);

  fill(255, 255, 255);
  rect(45+x, 35, 10, 10);
  rect(50+x, 30, 5, 5);
  rect(65+x, 35, 20, 10);
  rect(70+x, 30, 10, 20);

  fill(110, 10, 15);
  rect(45+x, 55, 25, 5);
  rect(50+x, 60, 20, 5);

  fill(255);
  rect(50+x, 55, 5, 5);
  rect(60+x, 55, 5, 5);

  fill(95, 95, 55);
  rect(50+x, 35, 5, 5);
  rect(70+x, 40, 5, 5);
}

void greenBall() {
  fill(125, 190, 5);
  rect(130-y, 45, 20, 10);
  rect(135-y, 40, 10, 20);
}

void drawMushroom() {
  fill(255, 0, 0);
  rect(195, 30, 20, 5);
  rect(190, 35, 30, 10);
  rect(185, 45, 40, 15);

  fill(255, 225, 185);
  rect(195, 60, 20, 10);

  fill(255);
  rect(190, 45, 10, 10);
  rect(205, 35, 10, 10);
  rect(205, 50, 10, 10);
}
void drawMushroom2() {
  fill(250, 30, 190);
  rect(275, 30, 20, 5);
  rect(270, 35, 30, 10);
  rect(265, 45, 40, 15);

  fill(255, 225, 185);
  rect(275, 60, 20, 10);

  fill(255);
  rect(270, 45, 10, 10);
  rect(285, 35, 10, 10);
  rect(285, 50, 10, 10);
}
void keyPressed() {
  if ( key == 'y' && step == 0) {
    step = 1;
    println("Let's go!");
    println(" ");
    greenBall();
    println("Hey!There is a green ball! Look nice!");
    println("Do you want to take it with you?");
    println("Press y for yes, n for no");
  } else if ( key == 'n' && step == 0) {
    step = 1;
    println("You are so boring. Have a good night!Fool!");
    clear();
  } else if (key == 'y' && step == 1) {
    println(" ");
    println("WTF! It's actually a garden bean!!");
    clear();
    println(" ");
    println("You die.");
    step = 2;
  } else if (key == 'n'&& step == 1) {
    println(" ");
    println("Lucy dog! You just escaped from a garden bean!!");
    println(" ");
    background(255);
    x=x+70;
    drawZombies();
    println("Here is a beautiful mushroom. Do you want to eat it?");
    println("Press y to eat, n for not");
    drawMushroom();
    step = 2;
  } else if (key == 'y' && step == 2) {
    println(" ");
    println("The beautiful one is always dangerous. You just eat a poisonous mushroom!!");
    println("You die.");
    clear();
  } else if (key == 'n' && step == 2) {
    println(" ");
    println("Smart choice!(It is actually a poisonous mushroom:( ");
    println("Keep going!");
    background(255);
    x=x+70;
    drawZombies();
    println("OMG!There is another beautiful mushroom.");
    drawMushroom2();
    println("Do you want to eat it?");
    println("Press y to eat, n for not.");
    step =3;
  } else if (key == 'n' && step == 3) {
    println(" ");
    println(" ");
    println("WTF! It's actually a BRAINNN!!!You just miss it!Fool!");
    clear();
    step = 2;
  } else if ( key == 'y' && step == 3) {
    step = 1;
    println(" ");
    println(" ");
    println("Smart Guy!How brave you are!How do you know it is actually a brain!");
    println("BRAINNNNN GET ");
    background(255);
    x=x+60;
    drawZombies();
  } else {
    println("That's not an option. Try again.");
  }
}