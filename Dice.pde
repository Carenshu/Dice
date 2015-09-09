void setup()
{
void setup()
{
	noLoop();
	size(512, 512);
}
void draw()
{
	Die die1 = new Die (50,50);
	die1.show();
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
		rect(x, y,50,50);
		ellipse(x+25, y+25, 5,5); //for roll=1
	}
}

