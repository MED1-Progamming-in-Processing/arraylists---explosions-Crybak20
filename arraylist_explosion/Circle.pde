class Circle {

  float x;
  float y;
  float r;
  float xSpeed = random(-3, 3);
  float ySpeed = random(-3, 3);

 float yAcc = 0.2; 
 float xAcc =0.2;

int object;
PImage photo = loadImage("rain.png");

  Circle(float x, float y, float r, int object){
    this.x = x;
    this.y = y;
    this.r = r;
    this.object = object;
  }

  void move() {
   ySpeed=ySpeed + yAcc; //makes the explosion fall down
   xSpeed=xSpeed + xAcc; //makes the explosion "windy"
   
    x += xSpeed;
    y += ySpeed; 
   
  }

  void display() {
    if (object == 1){
    noStroke();
    fill(random(255),random(255),random(255));
    ellipse(x, y, r, r);
    }
    if (object == 2){
    noStroke();
    fill(random(255),random(255),random(255));
    rect(x, y, r, r);
    }
    if (object == 3){
    image(photo,x, y,15,35);
    }
  }

  boolean isOffScreen(){
    return x < 0 || x > width || y < 0 || y > height;
  }
}
