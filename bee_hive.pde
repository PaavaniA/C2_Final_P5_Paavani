ArrayList<Bee> m;
Hexagon[][] hexagon;  

int radius = 100;
int x, y;

PImage BeeImage;
Bee bee;

void setup()
{
  fullScreen(P2D);
  bee = new Bee();
  BeeImage = loadImage("bee.png");
  BeeImage.resize(25, 25);

  x = (height/(radius));
  y = (width/(radius)*2);

  hexagon = new Hexagon [x][y];

  for (int i = 0; i < x; i++)
  {
    for (int j = 0; j < y; j++)
    {
      if ((j % 2) == 0) 
      {
        hexagon[i][j] = new Hexagon((3 * radius * i), (.866 * radius * j), radius);
      } else 
      {
        hexagon[i][j] = new Hexagon(3 * radius * (i + .5), .866 * radius * j, radius);
      }
    }
  }

  m = new ArrayList<Bee>();
  for (int i = 0; i < 250; i++)
  {
    m.add(new Bee());
  }
}

void draw() 
{

  for (int i = 0; i < x; i ++ ) 
  {     
    for (int j = 0; j < y; j ++ ) 
    {
      hexagon[i][j].render();
    }
  }

  for (Bee a : m) 
  {
    a.Update();
    a.Draw();
  }

}