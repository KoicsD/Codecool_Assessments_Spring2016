class Rectangular
{
	private double width;
	private double height;
	
	public Rectangular(double width, double height)
	{
		this.width = width;
		this.height = height;
	}
	
	public boolean hasMoreOrEqualAreaThan(Rectangular otherRectangular)
	{
		return this.width * this.height >= otherRectangular.width * otherRectangular.height;
	}
	
	public double getArea()
	{
		return this.width * this.height;
	}
	
	public void setParameters(double width, double height)
	{
		this.width = width;
		this.height = height;
	}
}