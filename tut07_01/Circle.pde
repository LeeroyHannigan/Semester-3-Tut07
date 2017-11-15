public class Circle extends Shape 
{
  private int radius;

  // Constructor
  public Circle(int x, int y, int radius) 
  {
    super(x, y);
    this.radius = radius;
  }
  public Circle(int x, int y, color colour, int radius)
  {
    super(x, y, colour);

    this.radius=radius;
  }

  @Override
    public double getArea() 
  {
    return PI*sq(radius);
  }

  @Override
    public void display()
  {    
    fill(getColour());
    ellipse(getX(), getY(), radius*2, radius*2);
  } 

  @Override
    public boolean intersects(Shape shape)
  {
    if (dist(shape.x, shape.y, getX(), getY()) < radius*2)    
      return true;
    else
      return false;
  }

  @Override
    public String toString() 
  {
    return "Circle[radius*2=" + radius + "," + super.toString() + "]";
  }
  @Override
    public void update()
  {
    if ((getX()>width-radius))
      changeXDirection();
    if ((getY()>height-radius))
      changeYDirection();
    if (getX()<0+radius)
      changeXDirection();
    if (getY()<0+radius)
      changeYDirection();
    incX(5);
    incY(5);
  }
  public void setRadius(int radius)
  {
    this.radius=radius;
  }
  public int getRadius()
  {
    return radius;
  }

  @Override
    public boolean equals(Shape shape)
  {
    Circle c;
    if (shape instanceof Circle)
      c = (Circle)shape;
    else 
    return false;

    return c.getRadius() == getRadius();
  }
}