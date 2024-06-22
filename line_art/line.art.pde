int x;
int y;
void setup()
{
  size(1000,1000);
  background(0);
}
void draw()
{

}

void mousePressed(){
  //background(255);
  x=mouseX;
  y=mouseY;
  stroke(255);
 //fill(0);
  line(0,random(1000),x,y);
  line(random(1000),0,x,y);
  line(x,y,random(1000),1000);
  line(x,y,1000,random(1000));
  line(0,random(1000),x,y);
  line(random(1000),0,x,y);
  line(x,y,random(1000),1000);
  line(x,y,1000,random(1000));
  
}
