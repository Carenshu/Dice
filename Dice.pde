void setup()
{
	noLoop();
	size(512, 512);
}
void draw()
{
	for (int y=0; y<100; y+=50)
	{
		for (int x=0; x<100; x+=50)
		{
			Die dice1 = new Die (50,50);
	        dice1.show();
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
	Die (int x,int y)//constructor
	{
		roll();
		dieX=x;
		dieY=y;
		
	}
	void roll()
	{ 
		//your code here
	}
	void show()
	{
		rect(dieX, dieY,50,50);
		ellipse(dieX+25, dieY+25, 10,10); //for roll=1
	}
}
