/**
trim()
Returns a copy of the string that no longer contains any 
leading or trailing white space characters.
 */

String message = '  I    learn  Apex ';
System.debug('message value is : ' + message); 
String trimmed = message.trim();
System.debug('trimmed value is : ' + trimmed); 

/**
normalizeSpace()
Returns the current String with leading, trailing, and repeating white space characters removed.
 */

 System.debug('message.normalizeSpace()  value is : ' + message.normalizeSpace() ); 

/**
deleteWhitespace()
Returns a version of the current String with all white space characters removed.
 */
  System.debug('message.deleteWhitespace()  value is : ' + message.deleteWhitespace().reverse() ); 