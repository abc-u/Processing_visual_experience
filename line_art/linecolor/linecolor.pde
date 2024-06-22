int x,y;
void setup()
{
 size(1000,1000);
}
void draw()
{
  fill(random(255),random(255),random(255),random(255));
  int y=int(random(1000));
  int x=int(random(1000));
  int z=int(frameCount);//int(random(100));
 //noStroke();
  stroke(random(255),random(255),random(255),random(255));
  strokeWeight(int(random(5)));
  line(0,x,1000,y);//ellipse(x,y,z,z);
  strokeWeight(int(random(5)));
  stroke(random(255),random(255),random(255),random(255));
  line(x,0,y,1000);
  frameRate(1);
  println(frameCount); 
} 
