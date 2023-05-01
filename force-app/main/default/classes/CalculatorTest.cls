/**
 * Test classes are created just like any other classes
 * It has @isTest on top of the class
 * The class access modifier can be private
 * Naming convention for the test classes:
 * YourClassName followed by the word Test
 * for example Calculator class -->> CalculatorTest
 * Test class contains test methods to test stuff
 */

@isTest
private class CalculatorTest {
  
    @isTest
    static void testAdd(){
        //do your testing here
       Decimal actualResult = Calculator.add(5,6);
        //expect this actualResult to be 11
        Decimal expectedResult = 11;
        
        System.assertEquals(expectedResult, actualResult);
    }

    @isTest
    static void testSubtract(){
        Decimal actualResult = Calculator.subtract(10, 4);
        Decimal expectedResult = 6;
        System.assertEquals(expectedResult, actualResult);
    }

    @isTest
    static void testMultiply(){
        
        Decimal expected = 10;
        Decimal actual = Calculator.multiply(2, 5);
        System.assertEquals(expected, actual);
        
        //Assert.areEqual(expected,actual);
    }

    @isTest
    static void testDivision(){
        
        Decimal expected = 6;
        Decimal actual = Calculator.divide(36, 6);
        System.assertEquals(expected, actual);
        //Assert.areEqual(expected,actual);
    }

    @isTest
    static void testDivideByZero(){
        
        Decimal expected = 0;
        Decimal actual = Calculator.divide(10, 0);
        System.assertEquals(expected, actual);
        //Assert.areEqual(expected,actual);
    }
}