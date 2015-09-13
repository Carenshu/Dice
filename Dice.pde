int rolling;
void setup()
{
	noLoop();
	size(512, 512);
}
void draw()
{
	for (int y=0; y<100; y+=10)
	{
		for (int x=0; x<100; x+=10)
		{
			Die dice1 = new Die (50,50);
	        dice1.show();
	        dice1.roll();
	        text(rolling,25,25);
		}
		
	}                                            
	
}
void mouseClicked()
{
	redraw();
}

class Die //models one single dice cube
{
	int dieX;
	int dieY;
	Die (int x,int y)//constructor
	{
		//roll();
		dieX=x;
		dieY=y;
		
	}
	void roll()
	{ 
		int rolling = (int)(Math.random ()*6);

	}
	void show()
	{

		if (rolling==0)
		{
		rect(dieX, dieY,50,50);
		ellipse(dieX+25, dieY+25, 10,10); //for roll=1
        }   
        else if (rolling==1)
        {
        	rect(dieX, dieY,50,50);
        	ellipse(dieX+15, dieY+15, 10,10);
        	ellipse(dieX+85, dieY+85, 10,10);

        } 	
        else if (rolling==2)
        {
        	rect(dieX, dieY,50,50);
        	ellipse(dieX+15, dieY+15, 10,10);
        	ellipse(dieX+85, dieY+85, 10,10);
        	ellipse(dieX+25, dieY+25, 10,10);
        	
        }
        else if (rolling ==3)
        {
        	rect(dieX, dieY,50,50);
        	ellipse(dieX+15, dieY+15, 10,10);
        	ellipse(dieX+85, dieY+85, 10,10);
        	ellipse(dieX, dieY+75, 10,10);
        	ellipse(dieX+75, dieY, 10,10);
        } 
        else if (rolling ==4)
        {
        	rect(dieX, dieY,50,50);
        	ellipse(dieX+15, dieY+15, 10,10);
        	ellipse(dieX+85, dieY+85, 10,10);
        	ellipse(dieX, dieY+75, 10,10);
        	ellipse(dieX+75, dieY, 10,10);
        	ellipse(dieX+25, dieY+25,10,10);
        }
        else if (rolling==5)
        {
        	rect(dieX, dieY,50,50);
        	ellipse(dieX+15, dieY+15, 10,10);
        	ellipse(dieX+85, dieY+85, 10,10);
        	ellipse(dieX, dieY+75, 10,10);
        	ellipse(dieX+75, dieY, 10,10);
        	ellipse(dieX+25, dieY,10,10);
        	ellipse(dieX, dieY+25, 10,10);
        }
	}
}
