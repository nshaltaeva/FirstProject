@isTest
private class AccountContactUpdateTriggerTest {

    @isTest
    static void testContactPhoneUpdateIfAccountPhoneUpdate(){
        
        // Arrange 
        List<Account> accList = Utils.createAccountsWithContacts(2, 3) ; 
    
        //Act
        accList[0].Phone = '123456789';
        accList[1].Phone = '987654321';
        Test.startTest();
        update accList;
        Test.stopTest();

        //Assert
        //write a SOQL to get the contacts under accList
        List<Contact> allContacts = [SELECT Phone, Account.Phone 
                                    FROM Contact 
                                    WHERE AccountId = :accList   ];
    
    }
    
}