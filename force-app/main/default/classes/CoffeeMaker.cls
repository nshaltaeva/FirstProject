public class CoffeeMaker {

    public String brand; 
    public Integer capacity ; 


    // create a method called makeCoffee
    // it should be available everywhere
    //it doesn't need any extra data when being called
    // it doesn't return any value
    // it needs an object while being called

    public void makeCoffee(){
    System.debug('Add Water...');
    System.debug('Add Coffee...'); 
    System.debug('Place the Cup...'); 
    System.debug('Press the button...'); 
    System.debug('Now Enjoy your coffee...');
    }

    // create a method called setTimer
  // it should be available everywhere
  // it needs an object while being called(not static)
  // it does not return any value
  // it accept whole number as minute
  // and print out setting timer for xx minutes
  public void setTimer(Integer num) {
    System.debug('setting timer for ' + num + ' minutes ');
  }

  
  
  // Create a public void method called clean
  // it does not have any method parameter
  // print the message : cleaning the coffee maker.
  // in your anon-apex, call the method

  public void clean(){
    System.debug('Cleaning the coffee maker'); 
    
  }
 
  // Create a public void method called addWater
  // it expect the caller to pass Integer value (it has Integer method parameter)
  // print the message : Adding XX ounces of water (replace the XX with what caller passed)
  // in your anon-apex, call the method
  public void addWater(Integer num){
    System.debug('Adding '+num+' ounces of water'); 
    
  }

}