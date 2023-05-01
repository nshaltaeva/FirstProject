// Contact c1 = Utils.getContact('Snow');
// System.debug('c1 value is : ' + c1);


// List<Contact> myContacts =  Utils.getContacts('Snow',10) ; 
// // size of myContacts should be 10
// System.debug('myContacts value is : ' + myContacts);

// //Account newAcc = Utils.insertNewAccount('Acc from Method');
// //System.debug('newAcc value is : ' + newAcc);

// EmailManager.sendMail('youremail@force.com', 'Email from Apex', 'Body from Apex');

// Account myAcc = Utils.getAccountAndContacts('Acc with Contact', 4);
// System.debug('myAcc value is : ' + myAcc);

// // get all the child contacts that belong to above Account here 
// List<Contact> childContacts = [SELECT LastName FROM Contact 
//                                 WHERE AccountId =  :myAcc.Id  ]; 

// System.debug('childContacts value is : ' + childContacts);

Account acc = [SELECT Name, Id, (SELECT LastName from Contacts)
                FROM Account
                WHERE Name = 'Acc with Contact'
                LIMIT 1 ] ; 

System.debug('acc.Name value is : ' + acc.Name);

//how do we access subquery part of parent to child query
System.debug('acc.Contacts value is : ' + acc.Contacts);

List<Contact> accChildContacts = acc.Contacts;
for(Contact each : accChildContacts) {
    System.debug('Current value : ' + each.LastName);
}
    
