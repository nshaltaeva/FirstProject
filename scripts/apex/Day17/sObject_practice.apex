
/**
Create Custom Object
   Vehicle 
        Name field make it auto number 
        In this format V-{000}
   Fields 
          Year as a number 
        Model as text 
          Make as text 
          Price as currency
          
 */
Vehicle__c v1 = new Vehicle__c();
v1.Year__c = 2023;
v1.Make__c = 'Tesla';
v1.Model__c = 'Model X';
v1.Price__c = 127000;

System.debug('v1 value is : ' + v1); 
insert v1;
System.debug('v1 value is : ' + v1); 

// Create List of Vehicle and insert in bulk
List<Vehicle__c> carList = new List<Vehicle__c>();
// update the price to 100K and add v1 into this List
v1.Price__c = 100000;
carList.add(v1);
// add 2 more Vehiclec with Make filled up
carList.add(new Vehicle__c(Make__c = 'Lucid'));
carList.add(new Vehicle__c(Make__c = 'Toyota'));
System.debug('carList value is : ' + carList); 
// insert this list into Salesforce
// insert what's not already in Salesforce
// and update what is already in Salesforce
// from this list into Salesforce
// upsert DML operation
// upsert DML operation : update + insert
upsert carList;
