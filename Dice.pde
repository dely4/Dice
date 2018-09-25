void setup(){
	noLoop();
	size(600,500);
}

void draw(){
	//your code here
	background(255,210,160);
	int sum = 0;
	for(int j = 0; j<5;j++){
		for(int i = 0; i < 5; i++){
		Die die = new Die(i*100+25,j*100+25);
		die.show();
		sum += die.dice_value;
		}
	}
	text("Sum: " + sum,525,100);
}

void mousePressed(){
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
		this.roll();
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
		fill(0);
		int dot_value = value;
		switch (dot_value) {
			case 1: Dot dotOne = new Dot((int)(x_position+25),(int)(y_position+25));
					dotOne.show();
					break;
			case 2: Dot dotTwoRight = new Dot((int)(x_position+37.5),(int)(y_position+12.5));
					dotTwoRight.show();
					Dot dotTwoLeft = new Dot((int)(x_position+12.5),(int)(y_position+37.5));
					dotTwoLeft.show();
					break;
			case 3: Dot dot3Right = new Dot((int)(x_position+37.5),(int)(y_position+12.5));
					dot3Right.show();
					Dot dot3Left = new Dot((int)(x_position+12.5),(int)(y_position+37.5));
					dot3Left.show();
					Dot dot3Mid = new Dot((int)(x_position+25),(int)(y_position+25));
					dot3Mid.show();
					break;
			case 4: Dot dot4TRight = new Dot((int)(x_position+37.5),(int)(y_position+12.5));
					dot4TRight.show();
					Dot dot4BLeft = new Dot((int)(x_position+12.5),(int)(y_position+37.5));
					dot4BLeft.show();
					Dot dot4TLeft = new Dot((int)(x_position+12.5),(int)(y_position+12.5));
					dot4TLeft.show();
					Dot dot4BRight = new Dot((int)(x_position+37.5),(int)(y_position+37.5));
					dot4BRight.show();
					break;
			case 5: Dot dot5TRight = new Dot((int)(x_position+37.5),(int)(y_position+12.5));
					dot5TRight.show();
					Dot dot5BLeft = new Dot((int)(x_position+12.5),(int)(y_position+37.5));
					dot5BLeft.show();
					Dot dot5TLeft = new Dot((int)(x_position+12.5),(int)(y_position+12.5));
					dot5TLeft.show();
					Dot dot5BRight = new Dot((int)(x_position+37.5),(int)(y_position+37.5));
					dot5BRight.show();
					Dot dot5Mid = new Dot((int)(x_position+25),(int)(y_position+25));
					dot5Mid.show();
					break;
			case 6:	Dot dot6TRight = new Dot((int)(x_position+37.5),(int)(y_position+12.5));
					dot6TRight.show();
					Dot dot6BLeft = new Dot((int)(x_position+12.5),(int)(y_position+37.5));
					dot6BLeft.show();
					Dot dot6TLeft = new Dot((int)(x_position+12.5),(int)(y_position+12.5));
					dot6TLeft.show();
					Dot dot6BRight = new Dot((int)(x_position+37.5),(int)(y_position+37.5));
					dot6BRight.show();
					Dot dot6MLeft = new Dot((int)(x_position+12.5),(int)(y_position+25));
					dot6MLeft.show();
					Dot dot6MRight = new Dot((int)(x_position+37.5),(int)(y_position+25));
					dot6MRight.show();
					break;
			default:System.out.println(dot_value);
			break;
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