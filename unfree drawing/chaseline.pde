int x=0;
int y=0;
int z=5;
int a=z/2;
int mx=0;
int my=0;
void setup()
{
 size(1000,1000);
 frameRate(30);
 fill(0);
}
void draw()
{
 ellipse(x,y,z,z);
 if(mouseX>=mx)
 {
  x=x+a;
 }
 else
 {
  x=x-a;
 } 
 if(mouseY>=my)
 {
  y=y+a;
 } 
 else
 {
  y=y-a;
 }
 mx=mouseX;
 my=mouseY;
} 
