class CeckPassFail
{
	private static int mark;
	
	public static void setMark(int newMark)
	{
		mark = newMark;
	}
	
	public static void printResult()
	{
		if (mark >= 50)
			System.out.println("PASS");
		else
			System.out.println("FAIL");
	}
}