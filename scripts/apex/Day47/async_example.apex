
// System.debug('Drink coffee'); 

// System.debug('clean up'); 
// AsyncUtil.boilWater();
// System.debug('chop the onion');
// System.debug('continue to cook'); 
 

// //Turn off Lead Trigger for now
// // have some data to work on
// //to simulate large data volume situation
// //prepare the data, insert 1000 Leads

// List<Lead> myLeads = Utils.getLeads('Jon Snow', 'NightWatch Inc', true, 1000);
// System.debug('myLeads.size()  value is : ' + myLeads.size() );

MyLeadBatchProcessor mlp = new MyLeadBatchProcessor();
Database.executeBatch(mlp, 100);
