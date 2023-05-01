/**
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.htm
 
  Math class is a class coming from Apex itself
  It has lof of pre-written code about math that we can just use directly

  Mod operator in math allow you to get the remainder of division

  10 / 3 = 3   1 remain
 
 */
 Integer num1 = 10;
 Integer num2 = 3;

 Integer result = num1/num2;
 System.debug('result value is: ' + result);

 //Math.mod(num1, num2) ==> remainder of the division
 Integer remainder = Math.mod(num1, num2);
 System.debug('result value is: ' +remainder);

 /**
Odd or Even in Math
Odd number is number that will have remainder of 1 when divided by 2
Even number is number that will have remainder of 0 when divided by 2
 */
 Integer score = 47;
 //store the result of checking the number is even or odd into a boolean variable
 Boolean isEven = Math.mod(score,2) == 0;
System.debug('isEven value is : ' + isEven); 
 //print odd number if score is odd and print even numbers if they are even
if( isEven){
    System.debug('Even number'); 
}else{
    System.debug('Odd number'); 
}

// Math.max(number 1, number 2) ==> return the bigger number
System.debug('which number is bigger : '  + Math.max(11, 99)); 
//which number is bigger : 99

// Math.mim(number 1, number 2) ==> return the smaller number
System.debug('which number is smaller : '  + Math.min(11, 99)); 
//which number is smaller : 11

// Math.random() ==> Returns a positive Double that is greater than or equal to 0.0 and less than 1.0.
Double randomDouble = Math.random()*100;
System.debug('Math.random()   value is : ' + randomDouble); 
System.debug('Math.random()   value is : ' + randomDouble*1000 ); 

Integer randomInteger = randomDouble.intValue();
System.debug('randomInteger value is : ' + randomInteger); 

Double dblPrice = 15.9;
Integer priceWholeNum = dblPrice.intValue();
System.debug('priceWholeNum value is : ' + priceWholeNum); 

