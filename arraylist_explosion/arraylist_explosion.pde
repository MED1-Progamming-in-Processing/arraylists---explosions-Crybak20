//Arraylist is a class object in java. Items can be easily added and removed from the ArrayList and it is resized dynamically
//https://docs.oracle.com/javase/8/docs/api/java/util/ArrayList.html
ArrayList<Circle> circles = new ArrayList<Circle>();
int object;

void setup() {
  size(500, 500, P2D);
  // background(255);
}

void mousePressed() {
  object++;
  if (object>3) {
    object=1;
  }
  for (int i = 0; i < 100; i++) {
    circles.add(new Circle(mouseX, mouseY, random(20), object));
  }
}

void draw() {
  background(255);

  for (int i = circles.size()-1; i >= 0; i--) {
    circles.get(i).move();
    circles.get(i).display();

    //if the object is off the screen --> remove. Does not destroy the object
    if (circles.get(i).isOffScreen()) {
      circles.remove(i);
    }
  }
}
