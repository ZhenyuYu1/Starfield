Particle[] part = new Particle[500];
void setup()
{
  size(800, 800);
  for(int i = 0; i < part.length; i++)
  {
    part[i] = new Particle();
  }
  part[0] = new OddballParticle();
}
void draw()
{
  background(255);
  for(int i = 0; i < part.length; i++)
  {
    part[i].show();
    part[i].move();
  }
}
class Particle
{
  double myX, myY, mySize, mySpeed, myAngle;
  int myColor;
  Particle()
  {
    myX = 400;
    myY = 400;
    mySpeed = Math.random()*10;
    myAngle = Math.random()*(Math.PI*2);
    mySize = Math.random()*10;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move()
  {
    for(int i = 0; i < 97; i++)
    {
      myAngle+=i;
      myX+=Math.cos(myAngle)*mySpeed;
      myY+=Math.sin(myAngle)*mySpeed;
    }
  }
  void show()
  {
    fill(myColor);
    stroke(myColor);
    ellipse((float)myX, (float)myY, (float)mySize, (float)mySize);
  }
}

class OddballParticle extends Particle
{
  OddballParticle()
  {
    myX = (int)(Math.random()*500 + 150);
    myY = (int)(Math.random()*500 + 150);
    mySpeed = (Math.random()*10);
    myAngle = Math.random()*(Math.PI*2);
    mySize = Math.random()*50 + 50;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move()
  {
    for(int i = 0; i < 97; i++)
    {
      myAngle-=i;
      myX+=Math.cos(myAngle)*mySpeed;
      myY+=Math.sin(myAngle)*mySpeed;
    }
  }
  void show()
  {
    fill(myColor);
    stroke(myColor);
    rect((float)myX, (float)myY, (float)mySize, (float)mySize);
  }
}
