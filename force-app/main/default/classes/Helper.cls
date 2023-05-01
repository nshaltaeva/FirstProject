    /**
     * Method can have below parts 
     * access modifier : public or private (at least from what we know)
     * static (OR NOT) : do I need an object to call this method or not 
     * return type : void for no return , data type for return 
     * method name : 
     * method parameters : what type of data need to be passed 
     *      when calling this method
     */

public class Helper {
   
    //create a static void method that print 1 to N
    public static void printOneToN(Integer n){
        for(Integer i=1; i<=n; i++){
            System.debug('i value is : ' + i);
            
        }
    }

    //create a static method that get the sum of the numbers from 1 to N
    public static Integer sumOfTheToN(Integer n){
        Integer sum = 0;

        for(Integer i=1; i<n ;i++) {
            sum += i;
        }
        return sum;
    }

    //create a method called getOneToNList
    //It should return List 
    public static List<Integer> getOneToNList(Integer n){

    List<Integer> numLst = new  List<Integer>(); 

    for(Integer i= 1; i<= n ;i++) {
    numLst.add(i); 
    }

    return numLst ; 

}
/**
 * Write a method called getHighestNum
 * @param List<Integer>
 * @return Highest num
 */

 public static Integer getHighestNum(List<Integer> numList){
    Integer max = numList[0];
    for(Integer each : numList) {
       if(each > max){
        max = each;
       }
    }
    return max;
 }


 /**
  * create a method that accept List of Integer
  @param List<Integer>
  @return sum of all those elements

  */

  public static Integer getTotal(List<Integer> numList){
    Integer sum = 0;
    for(Integer each : numList) {
        sum += each;
    }
      return sum;  
  }

  /**
   * a method that get the average getAverage
   * sum of all elements divided by item count size of the list
   * @param numList List<Integer>
     * @return average of all those elements 
     */
    public static Integer getAverage(List<Integer> numList){
    //    Integer sum = 0;
    //for(Integer each : numList) {
     //   sum += each;
    //}  
    Integer sum = getTotal(numList);  

    return sum/numList.size();
    }

       /**
     * a method called getLongerNames 
     * that accept many names and get the longer names from the list 
     * if the character count is greater than 5 and return all of them
     * 
     * @param names List<String> 
     * @return List<String> that meets the criteria
     * 
     */
    public static List<String> getLongerNames(List<String> strList){

        List<String> filteredList = new List<String>(); 

        for(String each : strList) {

            if( each.length() > 5 ){
                filteredList.add(each) ; 
            }

        }
        return filteredList ; 

    }






}