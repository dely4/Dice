void setup()
{
	noLoop();
	size(1000,1000);
}

void draw()
{
	//your code here
	background(255);
	Die die = new Die(100,100);
	die.show();
}

void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	int x_position, y_position;//variable declarations here
	int dice_value;

	Die(int x, int y) //constructor
	{
		this.x_position = x;
		this.y_position = y;
		this.dice_value = 0;
	}
	void roll()
	{
		this.dice_value = (int)(Math.random()*7);
	}
	void show()
	{
		fill(165,42,42);
		rect(x_position,y_position,50,50);
	}
}
