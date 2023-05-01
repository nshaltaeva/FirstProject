/**
Create a list of Integer with 8 times
Iterate over the list (use to go through each and every item)
print out only if the number is greater than 5
 */

List<Integer> shoeSizeList = new List<Integer>{4,7,9,2,7,8,12,1};
for(Integer eachSize : shoeSizeList ){ if(eachSize>5) System.debug(eachSize);}

// output  7 9 7 8 12
 // get the sum of shoe sizes only if the number is greater than 5
 Integer sum = 0;
 for( Integer eachSize: shoeSizeList ){
        if(eachSize>5)
        sum += eachSize;
}
System.debug(sum);

// get the count of shoe sizes only if the number is greater than 5
 Integer count = 0;
 for( Integer eachCount: shoeSizeList ){
        if(eachCount>5)
        count++;
}
System.debug(count);
