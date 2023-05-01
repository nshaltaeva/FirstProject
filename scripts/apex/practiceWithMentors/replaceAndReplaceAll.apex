String str = 'The quick brown fox jumps over the lazy dog';

// Using replace() method
String newStr = str.replace('o', '*');
System.debug(newStr); // Output: The quick br*wn fox jumps over the lazy dog

// Using replaceAll() method
String newStr2 = str.replaceAll('o', '*');
System.debug(newStr2); // Output: The quick br*w*n f*x jumps *ver the lazy d*g
