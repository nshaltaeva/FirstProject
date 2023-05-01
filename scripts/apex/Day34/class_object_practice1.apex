

BankAccount b1 = new BankAccount(); 
b1.accountHolder = 'Ali';
b1.accountNumber = 123456789;
b1.balance       = 500000 ; 

b1.showDetails(); 
System.debug('b1.getBalance() value is : ' 
                + b1.getBalance());

b1.deposit(5000.1) ; 
System.debug('b1.getBalance() value is : ' 
                + b1.getBalance());
//b1.getBalance() value is : 505000.1
b1.deposit(-5000.1) ; 
System.debug('b1.getBalance() value is : ' 
                + b1.getBalance());

b1.withdraw(200000);
System.debug('b1.getBalance() value is : ' 
                + b1.getBalance());
//b1.getBalance() value is : 305000.0

b1.withdraw(2000000);
System.debug('b1.getBalance() value is : ' 
                + b1.getBalance());

BankAccount b2 = new BankAccount();
b2.setupAccount('Cristina', 987654321, 1000000);
b2.showDetails();
b2.deposit(1000000);
System.debug('b2.getBalance() value is : ' 
                + b2.getBalance());
b2.deposit(-200);
b2.withdraw(50000);
System.debug('b2.getBalance() value is : ' 
                + b2.getBalance());

b2.changeName('Cristina 2.0');
b2.showDetails();
