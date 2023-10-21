Walker[]robin;
Rabbit caerbannogh;
void setup()
{
  size(1000,1000);
  robin = new Walker[100];
  for(int i= 0; i<robin.length; i++)
  robin[i]=new Walker();
  //different class
  
}
void draw()
{
  background(158,204,206);
 
 caerbannogh= new Rabbit(mouseX,mouseY);
 caerbannogh.myX1=mouseX;
 caerbannogh.myY1=mouseY;
 caerbannogh.show1();
  for(int i= 0; i<robin.length; i++)
  {
    robin[i].show();
    robin[i].walk(caerbannogh.myX1,caerbannogh.myY1);
    caerbannogh.show1();
   
    
  }
}

class Walker
{
  int myX,myY;
  int myColor;
  Walker()

  {
    myX=(int)(Math.random()*width);
    myY=(int)(Math.random()*height)*3;
    myY=250;
    myColor= color(232,197,54);
  }
  void walk(int targetX,int targetY)
  {
    int stepX=(int)(Math.random()*9)-2;
    int stepY=(int)(Math.random()*9)-2;
    
    
    if(targetX>myX){
      myX+=stepX;
    }else{
      myX-=stepX;
    }
    
    if(targetY>myY){
      myY+=stepY;
    }else{
      myY-=stepY;
    }
    
    myX=constrain(myX,0,width);
    myY=constrain(myY,0,height);
  }
  void show()//holy hand grenade
  { 
    fill(myColor);
    ellipse(myX,myY,30,30);
   // noStroke();
    rect(myX-5, myY-35,10,35);
    rect(myX-12,myY-26,25,10);
  }
}
class Rabbit
{
  int myColor1;
  int myColor2;
  int myColor3;
  int myX1, myY1, mySize1,mySize2;
  Rabbit(int x, int y){
  
    mySize1=50;
    mySize2=10;
    myX1= x;
    myY1=y;
    myColor1=color(255,255,255);
    myColor2=color(0,0,0);
    myColor3=color(250,164,249);
    
  }
  void show1()
  {
    fill(myColor1);
    ellipse(myX1+18,myY1-28,mySize2+5,mySize1);
    ellipse(myX1-18,myY1-28,mySize2+5,mySize1);
    ellipse(myX1,myY1, mySize1,mySize1);
    fill(myColor2);
    ellipse(myX1-10,myY1-5,mySize2,mySize2);
    ellipse(myX1+10,myY1-5,mySize2,mySize2);
    fill(myColor3);
    triangle(myX1-5,myY1+4,myX1,myY1+8,myX1+5,myY1+4);
    
  }
}
