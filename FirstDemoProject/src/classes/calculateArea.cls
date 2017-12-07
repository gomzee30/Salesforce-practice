public with sharing class calculateArea extends AreaofShapes 
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
		area = length * width;
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
/*
calculateArea ca = new calculateArea();
decimal circleresult = ca.Findcirclearea(10);
System.debug('Circle area: ' + circleresult);	
*/