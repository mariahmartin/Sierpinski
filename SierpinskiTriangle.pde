public void setup()
{
  size(500, 500);
  sierpinski(0, 0, width);
}
public void draw()
{
  noLoop();
}

public void sierpinski(float x, float y, float len)
{
 
  float x1, x2, x3, y1, y2, y3;
  x1 = x;
  y1 = height - y;
  x2 = x+len;
  y2 = height - y;
  x3 = x+len/2;
  y3 = height - (y+len);

  fill(255);
  if (len<=20)
  {
    triangle(x1, y1, x2, y2, x3, y3);
  } else
  {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y+len/2, len/2);
  }
}
