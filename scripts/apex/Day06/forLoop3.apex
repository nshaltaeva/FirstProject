/**Count from 1-10 using for loop
print the count multiplied by 5 */

for (Integer count =1; count <= 10; count++){
    System.debug(count +' X 5 = ' +count*5);
}

/**
Continue from above code, 
Above code works great if you just want to get the multiplication table of 5 , we want to be able to provide any number not just 5 and generate multiplication table of any numbers 
 */
System.debug('-------------------------------------------');

 /**
Give a number , print out below 

YourNumber + 1 = the result
YourNumber + 2 = the result
YourNumber + 3 = the result
..
YourNumber + 10= the result

 */
 Integer luckyNum = 9;
 for(Integer i=7; i<=10; i++){
    System.debug(luckyNum + ' + ' + i + ' = ' + (luckyNum+i));
 }