public class Calculator {


    //add
    public static Decimal add(Decimal num1, Decimal num2){
        return num1 + num2;
    }

    //subtract
    public static Decimal subtract(Decimal num1, Decimal num2){
        return num1 - num2;
    }

    //multiply
    public static Decimal multiply(Decimal num1, Decimal num2){
        return num1 * num2;
    }

    //divide
    public static Decimal divide(Decimal num1, Decimal num2){
        if(num2 == 0){
            System.debug('ERROR! Dont Divide by 0'); 
            return 0;
        }else{
            return num1/num2;
        }
       
    }
    
}