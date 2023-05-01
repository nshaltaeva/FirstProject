/**

Declare List variable initilize it's value 
and add all the items in one shot 

List<DataType> lstName 
        = new List<DataType>{item1, item2,.....itemN} ; 

 */
 List<String> groceries = new List<String>{'Milk', 'Bread', 'Egg', 'Coffee'};
 System.debug(groceries);

 // create List of Integer and add 5 values in one shot 
List<Integer> numbers = new List<Integer>{10,20,30,40,50};
 System.debug(numbers);
// create List of Decimal and add 5 values in one shot 
List<Decimal> decNumbers = new List<Decimal>{10.5,20.5,30.5,40.5,50.5};
 System.debug(decNumbers);
// create List of Id and  and add 5 values in one shot
List<Id> idNumbers = 
new List<Id>{'0018W0000260UZlQAM','0018W0000260UZlQAM',
'0018W0000260UZlQAM','0018W0000260UZlQAM','0018W0000260UZlQAM'};
 System.debug(idNumbers);
 // create a List of Boolean add 5 items into it 
List<Boolean> answers = new List<Boolean>{true , false , true, true, false};