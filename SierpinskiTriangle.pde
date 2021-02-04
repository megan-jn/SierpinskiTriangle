int x = 30;
int y = 570;
int len = 550;
PImage bananaCat;
int catX = (int)(Math.random()*400)+20;
int catY = (int)(Math.random()*400)+20;
int catSize = 200;
public void setup()
{
  size(600, 600);
  bananaCat = loadImage("data/bananacat.png");
}
public void draw()
{
  background(26, 29, 51);
  image(bananaCat, catX, catY, catSize, catSize);
  sierpinski(x, y, len);
}
public void keyPressed()//optional
{
  if(key == 'w')
  {
    y = y - 3;
  } else if(key == 's')
  {
    y = y + 3;
  } else if(key == 'a')
  {
    x = x - 3;
  } else if(key == 'd')
  {
    x = x + 3;
  } else if(key == 'j')
  {
    len = len + 10;
  } else if(key == 'k')
  {
    len = len - 10;
  }
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 30)
  {
    stroke(255);
    triangle(x, y, x+(len/2), y-len, x+len, y);
  } else {
    fill(255, 253, 207);
    sierpinski(x, y, len/2);
    //fill(252, 230, 204);
    fill(252, 186, 78);
    sierpinski(x+(len/2), y, len/2);
    //fill(252, 214, 202);
    fill(255, 98, 74);
    sierpinski(x+(len/4), y-(len/2), len/2);
  }
}
