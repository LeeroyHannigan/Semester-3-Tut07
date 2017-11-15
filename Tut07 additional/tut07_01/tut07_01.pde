Circle circle1;
Circle circle2;
ArrayList<Circle> circles;
int count=0;
boolean flag = true;
Circle c;
void setup()
{

  size(800, 600);

  /*Shape shape1 = new Shape(100, 100, Shape.WHITE);  
   shape1.display();
   println(shape1);*/
  circles= new ArrayList<Circle>();
  circles.add(new Circle(100, 100, Shape.WHITE, 50)); 
  circles.add(new Circle(700, 100, Shape.WHITE, 50));
}



void draw()
{  
  background(0);

  for (Circle c : circles)
  {
    c.display();
    c.update();
  }
  
  
  for(int i=0;i<circles.size();i++)
  {
    for(int j=0;j<circles.size();j++)
    {
       if(circles.get(i).intersects(circles.get(j) )&& i!=j)
       {
        circles.get(i).changeXDirection();
        circles.get(j).changeYDirection();
       //circles.get(i).changeYDirection();
        //circles.get(j).changeXDirection();
       }
   
   
    }
  }
  
  
  
  
  
}

void mousePressed()
{
  circles.add(new Circle(mouseX, mouseY, 50));
}



void keyPressed()
{
}