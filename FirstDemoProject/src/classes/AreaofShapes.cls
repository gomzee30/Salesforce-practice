public with sharing abstract class AreaofShapes {
    public decimal rad = 0.8;
	Public integer length ;
	public decimal area{get;set;}
	
	Public AreaofShapes(decimal length) {
	// assume our default area calculation is length x length
	area = length *length ; 
	}
	//Note : if this class has parameterized constructor, then it must have 'no parameter constructor'
	public AreaofShapes()
	{ }
	//Note : Abstract class can have Non abstract methods, same not true for interfaces ;
	public Decimal circleArea(integer r)
	{
	area = (r)*(r)*(Math.acos(-1)); // Pi = Math.acos(-1)
	return area;
	}
	// Note: Abstract methods must not define a body( not even curly braces), else error will come up
	// These below methods must be overridden in class implementing this abstract class.
	public abstract decimal RectangleArea(decimal length, decimal width);
	public abstract decimal hexagonArea(decimal length);
}