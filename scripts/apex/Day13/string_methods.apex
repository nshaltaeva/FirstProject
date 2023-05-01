/**
String is a Data type to store a text

it has a lot of reusable methods that we can us directly
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_methods
 */

 String str = 'Hello World';

 //https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_length

// length() method: return the character count inside the String
 Integer strLength = str.length();
 System.debug('strLength value is : ' + strLength); 

 //isEmpty(yourStringHere) method: return true if it is not '' or null else false
  System.debug('String.isEmpty(str) value is : ' + String.isEmpty(str)); 

 String msg1 = '    ' ; 
System.debug('String.isEmpty(msg1) value is : ' + String.isEmpty(msg1)  ); 

// isBlank method : Returns true if the specified String is white space, empty (''), or null; otherwise, returns false.
System.debug('String.isBlank(msg1) value is : ' + String.isBlank(msg1)  );


String season = 'summer' ; 

switch on season.toUpperCase()  {

    when 'SPRING' {
        System.debug('value Spring match');
    }
    when 'SUMMER' {
        System.debug('value Summer match');
    }
    when 'FALL' {
        System.debug('value Fall match');
    }
    when else {
        System.debug('nothing match');
    }
}