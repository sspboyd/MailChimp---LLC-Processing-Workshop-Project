PFont font;

int[] newsletter; // array for october newsletter 
int[] newsletter2; // array for november newsletter 

void setup() {
  size(775, 500);

  font = createFont("Helvetica", 20);
  textFont(font);

  String[] data = loadStrings("data.txt"); // load october newsletter data
  String[] data2 = loadStrings("data2.txt"); // load november newsletter data

  newsletter = int(split(data[0], ',' )); // split october newsletter data
  newsletter2 = int(split(data2[0], ',' )); // split november newsletter data
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

  // color legend for october newsletter
  fill(0, 255, 50);
  rect (width/2-20, 475, 10, 10);
  text("october newsletter", width/2-5, 485);

  // color legend for november newsletter
  fill(255, 0, 230);
  rect (width/2 +175, 475, 10, 10);
  text("november newsletter", width/2+190, 485);

  for (int i = 0; i < newsletter.length; i ++ ) {

    // setup variables for top rectangles
    int rectX= i*150+30; // rectangle x location  
    int rectY = 20; // rectangle y location
    int rectWidth = 100; //rectangle width
    int rectHeight = 25; // rectangle height

    // display top rectangles
    noFill();
    stroke(255);
    strokeWeight(2);
    rect(rectX, rectY, rectWidth, rectHeight);

    // setup variables for circle results 
    int circleX = i*150+80; // circle x location
    
    float newCircSize = map(newsletter2[i], 0, 10000, 0, 200);
    
    
    int circleDia = newsletter[i]; // circle diameter based on october data set
    int circleDia2 = int(newCircSize); // circle diameter based on november data set

    if ((mouseX>rectX) && (mouseX<rectX + rectWidth) && (mouseY>rectY) && (mouseY<rectY+rectHeight)) {
      // display october circle results - green
      noFill();
      strokeWeight(5);
      stroke(0, 255, 50, 255);
      ellipse(circleX, height/2, circleDia, circleDia);

      // display november circle results - pink
      stroke(255, 0, 230, 255);
      ellipse(circleX, height/2, circleDia2, circleDia2);
    }

    else {
      // display transparent october circle results - green
      noFill();
      strokeWeight(5);
      stroke(0, 255, 50, 115);
      ellipse(circleX, height/2, circleDia, circleDia);

      // display transparent november circle results - pink
      stroke(255, 0, 230, 115);
      ellipse(circleX, height/2, circleDia2, circleDia2);
    }
  }
  
 save("myfile.jpg"); 
}













