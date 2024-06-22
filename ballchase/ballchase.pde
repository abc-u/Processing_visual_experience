int x=255;
int y=0;
int z=10;
int s=500;
int t=500;
void setup()
{
  frameRate(120);
  size(1000,1000);
}
void draw()
{
  background(x);
  fill(y);
  ellipse(s,t,100,100);
  x=x+1;
  //y=y+1;
  if(s>mouseX)
  {s=s-1;}
  if(s<mouseX)
  {s=s+1;}
  if(t>mouseY)
  {t=t-1;}
  else if(t<mouseY)
  {t=t+1;}
}
