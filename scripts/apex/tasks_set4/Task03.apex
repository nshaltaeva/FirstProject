/**
3. Write a program that store 10 random Decimal numbers in List of Decimal
   print out the size of the list 
   print out the sum of all numbers
   print out the average of all numbers 
   now try to go back to the code where you added elements , add more items 
   into the list and run your program again to see if it works. 
 */

List<Decimal> prices = new List<Decimal>{10.99,20.50,30.70,40.30,50.87,60.25,70.64,80.97,90.10,100.99, 7.99};
//print out the size of the list 
Decimal sizeOfList = prices.size();
System.debug(sizeOfList);
//print out the sum of all numbers
Decimal sum = 0;
//iterate over the list using for each loop
for(Decimal eachPrice:prices){
    //System.debug(eachPrice);
    sum += eachPrice;
}
System.debug(sum);

//print out the average of all numbers 
//average = sum/count of items

Decimal average = sum/sizeOfList;
System.debug(average);
