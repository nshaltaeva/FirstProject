public class Order {

    public String product;
    public String customerName;
    public Decimal price;

    //create a static field tax rate
    public static Decimal taxRate;

    public Order(String product, String customerName, Decimal price) {
        this.product = product;
        this.customerName = customerName;
        this.price = price;
    }

    public void printOrder(){
        System.debug(this); 
        
        //System.debug('Order:[customerName=Duaa, price=3.99, product=Coffee]'); 
        
    }

    public static void showTaxRate(){
        System.debug('taxRate value is : ' + taxRate);
        
    }
}