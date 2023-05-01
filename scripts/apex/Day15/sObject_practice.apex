//Create a contact variable and initializing it's value
Contact c1 = new Contact();
// assigining the field values
c1.FirstName = 'Zeynep';
c1.LastName = 'Yildiz';
c1.Email = 'zyildiz@gmail.com';
System.debug('c1 value is : ' + c1); 
// or you can directly provide firld value inside ()
// while assigning the value to the variable
Contact c2 = new Contact(FirstName = 'Ilaha', LastName = 'Hashimova', Email = 'ihashimova@gmail.com');
System.debug('c2 value is : ' + c2); 

//Create a List of Contact and initialize it's value
//store above 2 contacts instances into the list

List<Contact> contacts = new List<Contact>();
contacts.add(c1);
contacts.add(c2);
contacts.add( new Contact(FirstName = 'Natalya', LastName = 'Kim', Email = 'nkim@gmail.com') );
System.debug('contacts value is : ' + contacts); 

System.debug('----------------------------');

 // Print out the first item in the List (either with list syntax or array)
 System.debug('contacts.get(0) value is : ' + contacts.get(0)); 
 System.debug('contacts[0] value is : ' + contacts[0]); 

System.debug('----------------------------');
 // Print out the first item First name in the List (either with list syntax or array)
 String firstContactFirstNameWithList = contacts.get(0).FirstName;
 String firstContactFirstNameWithArray = contacts[0].FirstName;
 System.debug('firstContactFirstNameWithList value is : ' + firstContactFirstNameWithList ); 
 System.debug('firstContactFirstNameWithArray value is : ' + firstContactFirstNameWithArray); 


 // Print out the second item in the List (either with list syntax or array)


 // Print out the second item last name in the List (either with list syntax or array)

 // Loop through each item and print them out

 insert contacts;

