int [] newsletter; // array for newsletter

void setup() {
  size (775, 500);

  String[] data = loadStrings("data.txt"); // load newsletter data

  newsletter = int(split(data[0], ',')); // split newsletter data
}

void draw () {
  background(255);
  smooth(); // improves the overall quality of draw

  for (int i=0; i<newsletter.length; i++) {

    // setup variables for top rectangles
    int rectX = i*150+30; // rectangle x location
    int rectY = 20; // rectangle y location
    int rectWidth = 100; // rectangle width
    int rectHeight = 25; // rectangle height

    // display top rectangles
    fill (255);
    rect(rectX, rectY, rectWidth, rectHeight);

    // setup variables for circle results 
    int circleX = i*150+80; // circle x location
    int circleDia = newsletter[i]; // circle diameter

    if ((mouseX>rectX) && (mouseX<rectX + rectWidth) && (mouseY>rectY) && (mouseY<rectY+rectHeight)) { 
      // display circle results
      fill(0, 255, 50, 255);
      ellipse(circleX, height/2, circleDia, circleDia);
    }

    else {
      // display transparent circle results
      fill(0, 255, 50, 50);
      ellipse(circleX, height/2, circleDia, circleDia);
    }
  }
}

