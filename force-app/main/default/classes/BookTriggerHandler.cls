public class BookTriggerHandler {

   public static void handleBeforeUpdate(List<Book__c> bookList, Map<Id,Book__c> bookOldMap){

    // Requirement
    // If the Book Name has changed, 
    // we want to keep the old value in description field for Tracking
    // This can be done in BEFORE_UPDATE event
for(Book__c each : bookList) {
         
          Book__c oldBook = bookOldMap.get(each.Id);
          // If the Book Name has changed,
          if(each.Name != oldBook.Name){
               each.Description__c = 'Old value: ' +oldBook.Name;
          }

     }

    }

     /**
     * A method that accept List of Book from Trigger using Trigger.new
        // if the year is empty ==> set it to 1999
        // Normalize the Book Name to remove extra spaces everywhere in the name
        // make your bookName title case 
     * @param bookLst 
     */
    public static void handleBeforeInsertUpdate(List<Book__c> bookList){
     //    Start with trigger loop 
       for(Book__c each : bookList) {
            
            if( each.Year__c == null  ){
                each.Year__c = 1999 ; 
            }

          //make the name TitleCase
          each.Name = each.Name.normalizeSpace();
          //get a list of each word
          List<String> wordList = each.Name.split(' '); 
        for(Integer i=0; i<wordList.size() ; i++) {
         wordList[i] = wordList[i].toLowerCase().capitalize(); 
        }
        each.Name = String.join(wordList, ' '); 
       }
    }


    public static void handleAfterUndelete(List<Book__c> bookList){
     // UserInfo class can be used to get information about current loggedin user
    // it has many static methods to extract information about user
    // including getting the userId, firstname, lastname, emails, and so on
    // with method with getXX format
    String userEmail = UserInfo.getUserEmail();    
    String body = 'Make sure this book supposed to be restored';

          
          for(Book__c each : bookList) {
               String subject = each.Name + ' Book has been restored '; 
               EmailManager.sendMail(userEmail, subject, body);
          }
    }

}