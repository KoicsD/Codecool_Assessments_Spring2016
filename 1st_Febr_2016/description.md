1.

Define a Rectangular class that has attributes width and height.  
Implement constructor to initialize these.  
Add method that expects a Rectangular param.
The method returns true if given rectangular has less area than the object where I call the method on.  
Add a method that calculates the area and returns it.  
Implement a method that can change the width and height param of the object
and these params are coming from the method arguments.

----------

2.

Write a program called CheckPassFail
which prints "PASS" if the int variable "mark" is more than or equal to 50; or prints "FAIL" otherwise.
The variable is a member variable and initialized with a member method. SetMark is the name of it.
The printer method name is PrintResult.

----------

3.

Write a class Account, which has a String property, called accountNumber, a double property,
called amount and a property called currency.
The currency can be one of these values: HUF, EUR, USD, CHF, so create an enumeration type for this.  
The account class should have a method (transfer)
which gets an account object, a double value and a currency as parameters.
The method should work as following:
* if the currency of the current object does not equal with the given account's currency,
  throw an Exception (any type you wish)
* if the currencies are equal, decrease the current object's amount with the given value
  and increase the given account's amount with the given value
* write another class which has a main method where you can instantiate 2 accounts and do a transfer
