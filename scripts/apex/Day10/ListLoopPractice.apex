/**
Create a list of 10 decimal numbers
in 2 separate loops

first loop
iterate over the list and print out the each items
skip item number 3 and 7 while printing

second loop
iterate over the list and print out the each items
break out of the loop if the number is more than 100
 */

 /**just now my 3rd kid brought from school a 
 lot of valentines than other ones, how to do in this case with break or continue statements:joy:  */

 List<Decimal> numbers = new List<Decimal> {
    1.11,22.22,100.99,3.33,14.44,200.00,12.50,8.88,9.99,50.00};

//print out the last item value without hard coding
Integer indexOfLastItem = numbers.size()-1;
System.debug('Index of last item '+indexOfLastItem);
System.debug('Last item value '+numbers.get(indexOfLastItem));

//1
for(Integer index=0; index<numbers.size(); index++){
   if (index == 2 && index == 6){
    continue;
   }
   System.debug('Index# '+index+' : '+numbers.get(index));
}

//2
for(Decimal eachNum: numbers){
    if(eachNum > 100){
        break;
    }
    System.debug(eachNum);
}



