/**
Create list of 5 accounts and fill it up 
insert this into SF
Create map of ID and Account and assign the value
fill up this map with ID of each record in the list as key
                            the record itself as value
 */

 List<Account> accList = new List<Account>();
 accList.add(new Account(Name = 'Cydeo1'));
 accList.add(new Account(Name = 'Cydeo2'));
 accList.add(new Account(Name = 'Cydeo3'));
 accList.add(new Account(Name = 'Cydeo4'));
 accList.add(new Account(Name = 'Cydeo5'));
 insert accList; //Database.insert(accList,false);

/*
 Map<Id,Account> accMap = new Map<Id,Account>(accList);
 System.debug('accMap value is : ' + accMap); 
 /*output is:
  accMap value is :
  {001Dn00000KnFyWIAV=Account:{Name=Cydeo1, Id=001Dn00000KnFyWIAV}, 
  001Dn00000KnFyXIAV=Account:{Name=Cydeo2, Id=001Dn00000KnFyXIAV}, 
  001Dn00000KnFyYIAV=Account:{Name=Cydeo3, Id=001Dn00000KnFyYIAV}, 
  001Dn00000KnFyZIAV=Account:{Name=Cydeo4, Id=001Dn00000KnFyZIAV}, 
  001Dn00000KnFyaIAF=Account:{Name=Cydeo5, Id=001Dn00000KnFyaIAF}}
 */

//   Map<Id,Account> accMap = new Map<Id,Account>();
//   //putAll(the record list) ==>> Map<Id, yourObjectType>
//   accMap.putAll(accList);
//   System.debug('accMap value is : ' + accMap); 

 /**
Homework :
Get a Map<Id, Account> without using one shot way or putAll method
 */ 

 Map<Id,Account> accMap = new Map<Id,Account>();

 for(Account eachAccount : accList) {
    accMap.put(eachAccount.Id, eachAccount);
 }
 System.debug('accMap value is : ' + accMap); 
    
