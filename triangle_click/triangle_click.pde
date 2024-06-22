int x;
int y;
void setup()
{
 
  size(1000,1000);
 }

void draw()

 {

}

void mousePressed(){
   { x=mouseX;
     y=mouseY;
     triangle(x,y,x,y+50,x+50,y+50);
   }
  
}
