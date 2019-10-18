Bacteria [] colony;
 void setup()   
 {     
   size(1000,1000);
   background(255);
   colony = new Bacteria [5];
   for(int i = 0; i < colony.length; i++)
   {
     colony[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   for(int i = 0; i < colony.length; i++)
   {
     colony[i].show();
     colony[i].move();
   }
 }  
void mousePressed()
{
  clear();
}
 class Bacteria    
 {     
   int myX, myY, co;
   Bacteria()
   {
     myX = 500;
     myY = 500;
     co = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
   }
   void move()
   {
   	 if(mouseX> myX)
    {
    	myX += (int)(Math.random()*5);
    }
    else
    {
    	myX += (int)(Math.random()*5)-3;
    }
    if(mouseY > myY)
    {
    	myY += (int)(Math.random()*5);
    }
    else
    {
    	myY += (int)(Math.random()*5)-3;
    }	
   }
   void show()
   {
     fill(co);
     ellipse(myX,myY,50,50);
   }
 }    