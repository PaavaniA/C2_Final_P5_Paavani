class Bee
{
  PVector location;
  PVector mouse;
  PVector velocity;
  PVector acc;
  PVector attraction;
  PVector prev;
  PImage beePhoto;
  float turnFactor = random(3, 10);
  float speedLimit = 200;

  Bee()
  {
    location = new PVector(width/2, height);
    mouse = new PVector(mouseX, mouseY);
    velocity = new PVector(random(-2, 2), random(-3, 3));
    acc = new PVector();
    attraction = new PVector(mouse.x, mouse.y);
    prev = new PVector(location.x, location.y);
  }

  void Update()
  {
    mouse.sub(mouseX, mouseY);
    mouse.mult(0.5);
    mouse.normalize();
    location.add(velocity);

    if (location.x > width+7)
    {
      location.x = width/2;
      location.y = 0;
    }

    if (location.x < -7)
    {
      location.x = width/2;
      location.y = height;
    }

    if (location.y > height)
    {
      location.x = width/2;
      location.y = 0;
    }

    if (location.y < 0)
    {
      location.x = width/2;
      location.y = height;
    }
  }

  void Draw()
  {
    image(BeeImage, location.x, location.y);
  }
}