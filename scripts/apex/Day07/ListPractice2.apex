/**
Declare a List of Integer variable and initialize it's value(empty)

Fill up the List with 100 items, starting with 1 ----> 100
 */

 List<Integer>  numList = new List<Integer>();
 for(Integer count = 1; count <= 20; count++){
   numList.add(count); 
 }
 System.debug(numList);

//  numList.add(1);
//  numList.add(2);
//  numList.add(3);
//  numList.add(4);
//  numList.add(5);
//  //...
//  numList.add(100);


 List<String> helloWorld= new List<String>(); 
    for(Integer i =1; i<=15; i++){
        helloWorld.add('Hello World!');
    }
    System.debug(helloWorld);

 // Create a List of Integer and store 15 items
 // all item value should be 10 ;
 // here is the content of the list
 // 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,, 10, 10   

 List<Integer> voteNumbers = new List<Integer>();
 for(Integer count=1 ;count<=15 ; count++){
    voteNumbers.add(10);
 }
System.debug(voteNumbers);

//How to count the items inside the list
//so we get the a number
//size() method of List

Integer voteCount = voteNumbers.size();
System.debug(voteCount);

