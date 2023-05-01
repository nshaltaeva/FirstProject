/**
you can exit any type of loop early
using the keyword break when needed
 */

//Create a List of Integer 

List<Integer> numList = new List<Integer>{7,12,15,10,17,100,4};

//loop through each and every item, when you find 10, stop looping

for(Integer eachNum: numList){
      System.debug(eachNum);

    if(eachNum == 10){
    System.debug('Yay, here is 10');
    break;
    }
}


