class Hexagon 
{
  float x, y, radius;
  float angle = 360.0 / 6;

  Hexagon(float cx, float cy, float r)
  {
    x=cx;
    y=cy;
    radius=r;
  }

  void render() 
  {
    beginShape(); 
    for (int i = 0; i < 6; i++)
    {
      vertex(x + radius * cos(radians(angle * i)), 
        y + radius * sin(radians(angle * i)));
    }
    fill(255, 221, 23);
    strokeWeight(2.5);
    endShape(CLOSE);
  }
}