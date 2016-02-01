class Account
{
	public static enum Currency{HUF, EUR, USD, CHF};
	
	public static class CurrencyMismatchException extends Throwable {};
	
	private String accountNumber;
	private double amount;
	private Currency currency;
	
	public Account(String accountNumber, double amount, Currency currency)
	{
		this.accountNumber = accountNumber;
		this.amount = amount;
		this.currency = currency;
	}
	
	public void transfer(Account otherAccount, double value, Currency currency) throws CurrencyMismatchException
	{
		if (otherAccount.currency != this.currency)
			throw new CurrencyMismatchException();
		
		this.amount -= value;
		otherAccount.amount += value;
	}
}
