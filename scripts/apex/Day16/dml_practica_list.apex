/**
 DML Practice

Create List of Account 
add 5 items with below Name 
Apex Acc 1 
Apex Acc 2 
Apex Acc 3 
Apex Acc 4 
Apex Acc 5 

insert this list

update the annual revenue field with
 random number between 0, 10000

 Let this update reflect in salesforce
 update using the list in one shot

 optionally delete them all
 */
 
 List<Account> accList = new List<Account>();

  for(Integer i=1; i<=5 ;i++) {
    //Apex Acc i
   /* Account acc = new Account();
    acc.Name = 'Apex Acc ' +i;
    accList.add(acc);
    or we can do shorter like below
    */
    accList.add(new Account(Name = 'Apex Acc ' +i));

 }
 System.debug('accList value is : ' + accList); 
 insert accList;
  System.debug('accList value is : ' + accList); 

  //update the annual revenue field with random number between 0, 100000
  for(Account each: accList){
    //random revenue
   // each.AnnualRevenue = (Math.random()*100000).round();
    each.AnnualRevenue = Math.round((Math.random()*100000));
  }
 System.debug('accList value updated is : ' + accList); 
 update accList;

//Create a new List of Account called VIPAccounts
//loop through each item in your accList and 
//          if the annual revenue is greater than 50000
//          update Description field to IMPORTANT ACCOUNT
//          add this account to vipAccounts List
List<Account> vipAccountsList = new List<Account>();
for(Account each : accList) {
    if(each.AnnualRevenue > 50000)
    {
        each.Description = 'IMPORTANT ACCOUNT';
        vipAccountsList.add(each);
    }
}
  System.debug('vipAccountsList value is : ' + vipAccountsList);   
    
// eventually update vipAccounts to reflect this change
update vipAccountsList;
