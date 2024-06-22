int x,y;
int a,b;
int s;
int rectsize;
int X,Y;
int f;
void setup()
{
  a=int(random(X));
  b=0;
  size(500,750);
  rectsize=50;
  s=1;
  Y=height-rectsize;
  X=width-rectsize;
  f=60;
}
void draw()
{
  //if(frameCount>10)
  //{
    //frameRate=10;
  //}
  f=f+1;
  frameRate(f);
  background(0);
 
  
  if(x>=width-rectsize){x=width-rectsize;}
  rect(x,height-rectsize-50,rectsize,rectsize);
  b=b+s;
  rect(a,b,rectsize,rectsize);
  b=b%750;
  if(b==0)
  {
    a=int(random(X));
  }
  if(x<a+rectsize&&x>a-rectsize&&Y<b+rectsize*2&&Y>b)
  {
    s=0;
  }
  else
  {
    s=1;
    x=mouseX;
  }
  
    
}
