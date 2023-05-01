// Increament and Decreament operators to increase|decrease the value by one 

// ++ used in the beginning of the variable is called pre-increment  ++score
// ++ used in the end of the variable is called post-increment  score++
// -- used in the beginning of the variable is called pre-decrement  --score
// -- used in the end of the variable is called post-decrement  score--

Integer count = 10 ; 

// System.debug('value of count ' + count );  //10 

// System.debug('value of ++count : '+         ++count );  // 11
// System.debug('value of --count : '+         --count );  // 10 


// System.debug('value of count++ : '+         count++ );  // 10  
// System.debug('the current value of count '+  count );   // 11

// System.debug('value of count-- : '+        count--  ); // 11 right now Next time 10
// System.debug('the current value of count '+  count );   // 10 

System.debug(count++      +'-------'+  count);
System.debug(++count      +'-------'+  count++);
System.debug(count);