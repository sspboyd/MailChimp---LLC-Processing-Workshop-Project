int [] newsletter; // array for newsletter

// setup variables for top rectangle
int rectX = 100; // rectangle x location
int rectY = 20; // rectangle y location
int rectWidth = 100; // rectangle width
int rectHeight = 25; // rectangle height

void setup() {
  size (775, 500);
  
  String[] data = loadStrings("data.txt"); // load newsletter data
  
  newsletter = int(split(data[0],',')); // split newsletter data
}

void draw () {
  background(255);
  smooth(); // improves the overall quality of draw
    
  // display top rectangle
  fill (255);
  rect(rectX, rectY, rectWidth, rectHeight);

  if ((mouseX>rectX) && (mouseX<rectX + rectWidth) && (mouseY>rectY) && (mouseY<rectY+rectHeight)) {
    // display circle
    fill(0, 255, 50, 255);
    ellipse(width/2, height/2, 100, 100);
  }
  
  else{
    // display transparent circle
    fill(0, 255, 50, 50);
    ellipse(width/2, height/2, 100, 100);
  }
}

