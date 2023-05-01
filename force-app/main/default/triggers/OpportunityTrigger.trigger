trigger OpportunityTrigger on Opportunity (before insert, after insert,
                                            before update, after update,
                                            before delete) {


    System.debug('Trigger is running for Event : ' 
    + Trigger.operationType); 

    // Requirement : 
    // When the opportunity is updated 
    // if the stageName has CHANGED to Closed Won 
    //  // Create a new Task with below details 
        // Subject : Follow up with renewal 
        // ActivityDate : 1 day from Today 
        // WhatId   :  opp Id 


        if(Trigger.isAfter && Trigger.isUpdate){
            //create an empty list of Task to store the list of items
            List<Task> taskList = new List<Task>();
            //trigger loop
            for(Opportunity each : Trigger.new){
                //Trigger.oldMap => Map<Id, Opportunity> with old fields value
                Opportunity oldOpp = Trigger.oldMap.get(each.id);
                // System.debug('New Stage value '+each.StageName); 
                // System.debug('Old Stage value '+oldOpp.StageName); 

                //if the StageName has changed to Closed Won
                if(each.StageName != oldOpp.StageName && each.StageName == 'Closed Won'){

                    Task t = new Task();
                    t.Subject = 'Follow up with renewal ' + each.Name;
                    t.ActivityDate = Date.today() + 1;
                    t.WhatId = each.Id;
                    taskList.add(t);
                }
            }
            insert taskList;
        }

    //Requirement:
    //If the opportunity is in Closed Won Stage
    //It should be deleted
    //Throw error message : You can not delete Opp in Closed Won Stage
    if(Trigger.isBefore && Trigger.isDelete){
        //trigger loop
        for(Opportunity each: Trigger.old){
            //if the opportunity is in Closed Won Stage
            if(each.StageName == 'Closed Won'){
                each.addError('You can not delete Opp in Closed Won Stage');
            }
        }
    }
    

     // Requirement : 
    // Anything new Opportunity is created 
    // If the Amount the field  is empty 
    // Fill it up with 10000
    if(Trigger.isBefore && Trigger.isInsert){
        
        //trigger loop
        for(Opportunity each : Trigger.new){

            if(each.Amount == null){
                each.Amount = 10000;
            }
        }


    }

    //Requirement
    //Anytime new Opportunity is created
    //If Amount field is negative
    //Populate error message 'You cannot save this Opp. Amount is negative'

    if(Trigger.isBefore && Trigger.isUpdate){
        //trigger loop
        for(Opportunity each: Trigger.new){
            //if the opp amount is negative
            if(each.Amount < 0){
                //throw an error 'Amount cannot be negative'
                //each.addError('Amount cannot be negative');
                each.Amount.addError('Amount cannot be negative');
            }
            
        }
    }

    //Requirement:
    //Anytime new Opportunity is created, if the Amount is greater than 500000
    //create a follow up tasks with below detail 
    //Task Subject: Follow up with high value op
    //Task ActivityDate: 1 day from now
    //Task RelatedTo (whatId) : Your Opportunity (Id)

    if(Trigger.isAfter && Trigger.isInsert){
        //we need a place to store all the tasks that about to be entered
        //list of Task
        List<Task> taskList = new List<Task>();
        //trigger loop
        for(Opportunity each : Trigger.new){
            if(each.Amount>50000){
                //create a follow up tasks with below detail
                Task t = new Task();
                t.Subject = 'Follow up high value Task '+ each.Name;
                t.ActivityDate = Date.today()+1;
                t.WhatId = each.Id;
                //add it to the task list to be inserted
                taskList.add(t);
            }
        }
        //outside the loop insert once
        insert taskList;
    }

}