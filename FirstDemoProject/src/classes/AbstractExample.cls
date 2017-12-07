public with sharing abstract class AbstractExample {
    public abstract class AreaofShapes
	{
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
	
	/*------------------------------------------------------------------------------------------*/
	
	public class calculateArea extends AreaofShapes
	{
		// Note :This class will have automatic access of variables of Abstract class
		public calculateArea ()
		{
		//Calling constructor of parent abstract class using super keyword
		super(5);
		}
		// Calling non abstract method of parent
		public decimal Findcirclearea(integer r) {
		return circleArea(r);
		}
		// This class must use override keyword for abstract methods. Note area variable not defined in this class 
		// and still used as it is defined in parent.
		public override decimal RectangleArea(decimal length, decimal width)
		{
			area = length * width ;
			return area;
		}
		public override decimal hexagonArea(decimal length){
			area = 6*length;
			return area;
		}
		//this class can have its own methods also
		public decimal calculateSquareArea() {
		// I can't just call Constructor of Parent in child in any method ,/ super needs to be present in constructor of child
		// area = super(length)// this line will give error,if uncommented
		// area calculated by constructor, will be returned from below statement.
		return area ; 
	}	
}
}