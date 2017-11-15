Circle circle1;
Circle circle2;
int count=0;
void setup()
{
  size(800, 600);

  /*Shape shape1 = new Shape(100, 100, Shape.WHITE);  
   shape1.display();
   println(shape1);*/

  circle1 = new Circle(100, 100, Shape.WHITE, 50); 
  circle1.changeXDirection();
  circle1.changeYDirection();
  println(circle1);

  circle2 = new Circle(700, 100, Shape.WHITE, 50);  
  circle2.changeXDirection();
  circle2.changeYDirection();
  println(circle2);

  if (circle1.equals(circle2))
  {
    println("Both Circles Are Equal");
  }
}

void draw()
{  

  background(0);
  circle1.display(); 
  circle1.update();
  circle2.display();
  circle2.update();
   if (circle1.intersects(circle2))
   {
     circle1.changeXDirection();
 // circle1.changeYDirection();
  circle2.changeXDirection();
 // circle2.changeYDirection();
   }

  if (circle1.intersects(circle2)&& circle1.equals(circle2))
  {

    if (count ==0)
    {
      circle1.setColour(Shape.RED);
      circle2.setColour(Shape.RED);
      println("intersects...");
      count++;
      circle1.setRadius(circle1.getRadius()-1);
      circle2.setRadius(circle2.getRadius()-1);
    }
  } else
  {
    count=0;
    circle1.setColour(Shape.WHITE);
    circle2.setColour(Shape.WHITE);
  }
  if (circle1.getRadius()==0 && circle2.getRadius()==0)
    exit();
}



void keyPressed()
{
  if (keyCode == UP) 
  {

    circle1.setRadius(circle1.getRadius()+10);
    circle2.setRadius(circle1.getRadius()+10);
  }
  if (keyCode == DOWN) 
  {
    circle1.setRadius(circle1.getRadius()-10);
    circle2.setRadius(circle1.getRadius()-10);
  }
}