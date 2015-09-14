int rolling;
void setup()
{
       noLoop();
        size(500, 500);
}
void draw()
{
        for (int y=0; y<512; y+=50)
        {
                for (int x=0; x<512; x+=50)
                {
                        Die dice1 = new Die (x,y);
                        dice1.roll();
                        dice1.show();
               
                        text(rolling,25,25);
                }
                
        }                                            
        
}
void mousePressed()
{
        redraw();
}

class Die //models one single dice cube
{
        int dieX;
        int dieY;
        int rolling;
        
        Die (int x,int y)//constructor
        {
                roll();
                dieX=x;
                dieY=y;
                
        }
        void roll()
        { 
                rolling = (int)(Math.random ()*6);

        }
       
        void show()
        {
            
                rect(dieX, dieY,50,50);
                if (rolling==0)
                {
                rect(dieX, dieY,50,50);
                ellipse(dieX+25, dieY+25, 5,5); //for roll=1
        }   
         if (rolling==1)
        {
                rect(dieX, dieY,50,50);
                ellipse(dieX+15, dieY+15, 5,5);
                ellipse(dieX+35, dieY+35, 5,5);

        }         
    if (rolling==2)
        {
                rect(dieX, dieY,50,50);
                ellipse(dieX+15, dieY+15, 5,5);
                ellipse(dieX+35, dieY+35, 5,5);
                ellipse(dieX+25, dieY+25, 5,5);
                
        }
         if (rolling ==3)
        {
                rect(dieX, dieY,50,50);
                ellipse(dieX+10, dieY+10, 5,5);
                ellipse(dieX+35, dieY+35, 5,5);
                ellipse(dieX+10, dieY+35, 5,5);
                ellipse(dieX+35, dieY+10, 5,5);
        } 
         if (rolling ==4)
        {
                rect(dieX, dieY,50,50);
                ellipse(dieX+10, dieY+10, 5,5);
                ellipse(dieX+35, dieY+35, 5,5);
                ellipse(dieX+10, dieY+35, 5,5);
                ellipse(dieX+35, dieY+10, 5,5);
                ellipse(dieX+25,dieY+25,5,5);
        }
         if (rolling==5)
        {
                rect(dieX, dieY,50,50);
                ellipse(dieX+10, dieY+10, 5,5);
                ellipse(dieX+35, dieY+35, 5,5);
                ellipse(dieX+10, dieY+35, 5,5);
                ellipse(dieX+35, dieY+10, 5,5);
                ellipse(dieX+25,dieY+10,5,5);
                ellipse(dieX+25, dieY+35,5,5);
        }
        }
}


