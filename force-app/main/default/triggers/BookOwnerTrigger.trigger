trigger BookOwnerTrigger on Book__c(before insert, before update) {
  
  System.debug('Trigger is running for Event : ' + Trigger.operationType);

  // This trigger has below logic
  // Whenever book is created or updated

  // Since we can not write SOQL inside the loop, 
  // we have to get all the contacts 
  // that associated with Books that entered the tigger
  // outside the loop using SOQL 
  // and best way to get those contacts is using Id of Contact 


  // Multiple books can|will enter the same time
  // not all the books might have contact__c filled 
  Set<Id> contactIdSet = new Set<Id>();
  // Loop through each book that entered the trigger

  //SELECT Id, Name, OwnerID FROM Contact 
  //WHERE Id IN ('003Dm000003Nep0IAA','003Dm000003Nep0IB','003Dm000003Nep0IAC')

  for(Book__c each : Trigger.new) {
  // add the contact__c(Id of Parent contact)
  // into the contactIdSet if it exists 
    if(each.Contact__c !=null ){
       contactIdSet.add(  each.Contact__c   ); 
    }
  }

  //SELECT Id, Name, OwnerID FROM Contact 
//WHERE Id IN ('003Dm000003Nep0IAA','003Dm000003Nep0IB','003Dm000003Nep0IAC')

  List<Contact> contactList = [Select Id,Name, OwnerId FROM Contact
                              WHERE Id IN :contactIdSet ]; 










  



  for (Book__c each : Trigger.new) {

    if (each.Contact__c != null) {

     
    }
  }

}