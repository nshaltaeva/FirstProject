/**
List is a collection type that store element in insertion order
each and every element are stored in a position that start with 0
for example if you have below list
 List<Integer> numLst = new List<Integer>{19,1,23,4,6,99};
 */

List<Integer> numLst = new List<Integer>{19,1,23,4,6,99};
//get the element at certain index using get method

//get the first element and store it in variable
Integer item1 = numLst.get(0);
System.debug('First item value is '+item1);

//directly print out the second item value using get method
System.debug('Second item value is '+ numLst.get(1));

System.debug('Third item value is '+ numLst.get(2));
System.debug('Forth item value is '+ numLst.get(3));
System.debug('Fifth item value is '+ numLst.get(4));
System.debug('Sixth item value is '+ numLst.get(5));

System.debug(numLst);

for(Integer index=0  ; index<6 ; index++ ){
    System.debug(   numLst.get(index)   ); 
}

//is equivalent of 
  System.debug(  numLst.get(0)  ); 
  System.debug(  numLst.get(1)  ); 
  System.debug(  numLst.get(2)  ); 
  System.debug(  numLst.get(3)  ); 
  System.debug(  numLst.get(4)  ); 
  System.debug(  numLst.get(5)  );

