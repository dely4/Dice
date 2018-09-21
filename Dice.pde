void setup()
{
	noLoop();
	size(1000,1000);
}

void draw()
{
	//your code here
	background(255,210,160);
	for(int i = 0; i<11;i++){
		for(int j = 0; j < 11; j++){
		Die die = new Die(i*100+25,j*100+25);

		die.show();
		}
	}
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
	void roll() //creates random value for dice
	{
		this.dice_value = (int)(Math.random()*6+1);
	}
	void show() //shows the dice 
	{
		fill(255);
		rect(x_position,y_position,50,50);
		this.draw_dots(dice_value);
	}
	void draw_dots(int value){ // draws the dots
		for(int q = 1;  q < 4; q++){
			for(int y = 1; y <4; y++){
				fill(0);
				Dot dot = new Dot((int)(x_position+12.5*q),(int)(y_position+12.5*y));
			}
		}
	}
}

class Dot{
	int x,y;
	public Dot(int x, int y){
		this.x = x;
		this.y = y;
	}
	void show(){
		ellipse(this.x, this.y, 10,10);
	}
}