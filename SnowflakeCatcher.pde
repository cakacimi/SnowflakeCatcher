

SnowFlake [] flurry= new SnowFlake[100];

void setup()
{
  background(0);

  size(500,500);
   
 

  for(int i =0; i<flurry.length; i++)

      {
        flurry[i]=new SnowFlake();
      }
 
     
}

void draw()
{
  
  for(int i = 0; i<flurry.length; i++)
{


  flurry[i].erase();
    flurry[i].move();
    flurry[i].show();
    flurry[i].lookDown();
}
 


  //your code here
}
void mouseDragged()
{
  
  fill(69,160,20);
  ellipse(mouseX,mouseY,10,10);
  //your code here
}

class SnowFlake

  {int xPos, yPos;
  boolean isMoving;
  //class member variable declarations
  SnowFlake()
  {
    xPos=(int)(Math.random()*500);
    yPos=(int)(Math.random()*500);
    isMoving=true;
    //class member variable initializations
  }
  void show()
  {
   noStroke();
  fill(225);
  ellipse(xPos, yPos, 10,10);
    //your code here
  }

  void lookDown()

  {
   if (y>0 && y<500 && get(xPos, yPos+6) ==color(255))
     isMoving = false;
    else if (y<500 && get(xPos, yPos+6)== color(69,160,20))
      isMoving=false;
    else
    isMoving= true;
  }
  
  void erase()
  {
    noStroke();
    fill(0);
    ellipse(xPos, yPos,12,12);
  }

 
  void move()
  {
    if(isMoving==true)
    yPos++;
    
    if(yPos==499)
    yPos=0;
        //your code here
  }

}
