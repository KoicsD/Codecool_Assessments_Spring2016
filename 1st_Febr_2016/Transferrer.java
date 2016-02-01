class Transferrer
{
	public static void main(String[] args)
	{
		Account myFathersAccount = new Account("001", 1000000, Account.Currency.USD);
		Account myAccount = new Account("001", 0, Account.Currency.USD);
		try
		{
			myFathersAccount.transfer(myAccount, 80000, Account.Currency.USD);
		}
		catch(Account.CurrencyMismatchException exc)
		{
			System.out.println("Inappropriate currencies!");
		}
	}
}
