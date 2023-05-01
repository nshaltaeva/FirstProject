public class BankAccount {
   
    //accountHolder, accountNumber, balance
    @testVisible
    private String accountHolder;
    @testVisible
    private Integer accountNumber;
    @testVisible
    private Decimal balance;

    public BankAccount(){
        System.debug('Message from BankAccount 0 param constructor '); 
    }

    // constructor overloading (overloading means using same name with different parameter list)
    public BankAccount(String accountHolder, Integer accountNumber, Decimal balance){
        this.accountHolder = accountHolder;
        this.accountNumber = accountNumber;
        this.balance       = balance;
    }

    //create a void method showDetails()
    //accept no param
    //print the details of current object

    //Account Holder name XX, Number :YY, Balance : ZZ
    public void showDetails(){

    System.debug('Account Holder name: ' + accountHolder
                    + ', Number : '  + accountNumber
                    + ', Balance : ' + balance  );

    }

    // create a method called getBalance
    // accept no parameter
    // simply return current balance
    public Decimal getBalance(){
    // DO SOME VERY COMPLEX CHECK
    // BEFORE DOING BELOW RETURN IN REAL LIFE
    return this.balance;
    }

    //create a void method called deposit
    //accept 1 decimal param
    //increase the balance by the number provided

    public void deposit(Decimal newMoney){
        if(newMoney > 0){this.balance += newMoney;
        //this.balance =  this.balance + newMoney ;
        }else{
            System.debug('Invalid Number!!!!'); 
            
        }       
    }

    //create a void method called withdraw
    //accept 1 decimal param
    //decrease the balance by the number provided
    //cannot withdraw if money you don't have

    public void withdraw(Decimal money){
        if(money <= this.balance){
        this.balance -= money;
        }else{
            System.debug('Cannot withdraw, not enough money!!!'); 
            
        }
    }

    //create a void method called setupAccount
    //accept 3 parameters for
    //assign value to 3 instance fields
    public void setupAccount(String holder, Integer num, Decimal balance){
        this.accountHolder = holder;
        this.accountNumber = num;
        this.balance = balance;
    }

    // Create a void method called changeName
    //Accept 1 parameter for 
    // (re)assigning the name field value
    public void changeName(String newName){
    this.accountHolder = newName;
    }

}