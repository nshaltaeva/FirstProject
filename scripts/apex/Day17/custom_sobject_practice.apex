/**
We created a Custom Object as below 
Create Custom Object
   Vehicle 
        Name field make it auto number 
        In this format V-{000}
   Fields 
          Year as a number 
          Model as text 
          Make as text 
          Price as currency
          Contact as Lookup to Contact object 

Now we need to access here in VSCode 
Go to command pallette and type 
SFDX: Refresh Object Definition
select All object 
now you have access to latest changes you made under Object manager 

 */

 // Create a contact with LastName 
 // insert into SF 
 Contact c1 = new Contact(LastName = 'Snow');
 insert c1;
 System.debug('c1 value is : ' + c1); 

 // Create a vehicle with all the fields 
 Vehicle__c v1 = new Vehicle__c(Make__c = 'Audi',
                                Model__c = 'A8',
                                Year__c = 2024,
                                Price__c = 100000);
 // including ContactId field set to the Id from above contact
  v1.Contact__c = c1.Id;
 // insert this contact 
 insert v1;



