int x;
int y;
float f;
float j;
void setup()
{
  x=0;
  y=0;
  f=1;
  j=0.1;
  size(800,800);
 }
void draw()
{
  line(height,x,0,x);
  line(y,0,y,width);
  x=x+20;
  y=y+20;
  frameRate(f);
  j=j+0.1;
  f=f+j; 
}
