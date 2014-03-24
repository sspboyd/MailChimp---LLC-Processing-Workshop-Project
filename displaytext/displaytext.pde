PFont font;

void setup() {
  size(775, 500);

  font = createFont("Helvetica", 20);
  textFont(font);
}

void draw() {
  background(0);
  smooth(); // improves the overall quality of draw

  // text labels
  fill(255);
  noStroke();
  text("deliveries", 40, 40);
  text("bounces", 190, 40);
  text("opens", 355, 40);
  text("clicks", 505, 40);
  text("unsubs", 650, 40);

  // color legend for data set #1 - october newsletter
  fill(0, 255, 50);
  rect (width/2-20, 475, 10, 10);
  text("october newsletter", width/2-5, 485);

  // color legend for data set #2 - november newsletter
  fill(255, 0, 230);
  rect (width/2+175, 475, 10, 10);
  text("november newsletter", width/2+190, 485);
}

