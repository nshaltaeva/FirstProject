/**
3 data types that related to Date and Time in Apex
Date
DateTime
Time
 */

//Creating Date variable and assigning the value to Today's date
// today method of Date class will return Today's date
Date d1 = Date.today();
System.debug('d1 value is : ' + d1);  

//Creating a date with any year, month, day
/**
newInstance(year,month, day)
Constructs a Date from Integer representations of the year, month (1=Jan), and day.
 */

 Date d2 = Date.newInstance(1999, 9, 17);
 System.debug('d2 value is : ' + d2); 

/**
addDays(additionalDays)
Adds the specified number of additional days to a Date.
Signature

public Date addDays(Integer additionalDays)
 */
Date d2After7Days = d2.addDays(7);
System.debug('d2After7Days value is : ' + d2After7Days); 

Date d2Before7Days = d2.addDays(-7);
System.debug('d2Before7Days value is : ' + d2Before7Days); 


