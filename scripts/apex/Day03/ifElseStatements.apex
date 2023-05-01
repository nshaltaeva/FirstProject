// Create a variable :
// annualRevenue as Integer and initialize it's value
// rating as String

/* If the annualRevenu greater than 100000
assign the value the value of rating to hot
otherwise assign the value of rating to cold
print out the rating variable outside your if statement
*/

Integer annualRevenue = 5000000;
String rating ;

if(annualRevenue > 100000){
    rating = 'hot' ;
}else{
   rating = 'cold'; 
}
System.debug('Rating is ' + rating);


// Ternary operator can be used to conditionally assign the value of variable
// DataType yourVariableName = (condition) ? TrueValue : FalseValue;

String rating1 = (annualRevenue>100000) ? 'hot': 'cold';
System.debug('Rating is ' +rating1);

// declare and initiaze a variable called score1 
// declare a String variable called examResult 
// assign the value of examResult according to the score1 > 66 or not
Integer score1 = 67 ; 
String examResult = (score1>66) ? 'PASS' : 'FAIL'  ; 
System.debug('Exam Result : ' + examResult);

// declare and initiaze a variable called salary as Integer 
// declare a Double variable called taxRate 
// assign the value of taxRate according to below condition
// if the salary is greater than 100K , taxRate is 0.3 else 0.15

Integer salary = 120000;

//taxRat
Double taxRate;
if(salary > 100000){
    taxRate = 0.3;
}else{
    taxRate=0.15;
}
System.debug('Tax rate is ' + taxRate);

Double taxRate1 = (salary > 100000) ?  0.3 : 0.15;
System.debug('Tax rate is ' + taxRate1);

// if the score is less than 0 or more than 100 
// print invalid score 
// else 
// print valid score 


Integer score2 = 77 ; 

if( score2>100 || score2 <0 ){
    System.debug('Invalid Score');
}else{
    System.debug('Valid score');
}

// Multi Branch if statement 

// if the score is less than 0 or more than 100 
// print invalid score 
// if the score is more than 90 print A 
// if the score is between 80 and 90 print B
// if the score is between 70 and 80 print C
// else print work harder

if( score2>100 || score2 <0 ){
    System.debug('Invalid Score');
}else if(score2 > 90){
    System.debug('You got A');
}else if(score2 > 80){
    System.debug('You got B');
}else if(score2 > 70){
    System.debug('You got C');
}else{
    System.debug('Work harder');
}


// declare a String variable called season 
// and initialize it's value 
/*
if it's spring  print  Go Camping 
if it's summer  print  Go Swimming 
if It's fall    print  Go Pick Pumkin
if it's winter  print  Go to sleep 
if nothing match print invalid season 
*/

String season = 'summer' ;

if(season == 'spring'){
    System.debug('Go Camping');
}else if(season == 'summer'){
    System.debug('Go Swimming');
}else if(season == 'fall'){
    System.debug('Go Pick Pumkin');
}else if(season == 'winter'){
    System.debug('Go to sleep');
}else{
    System.debug('invalid season');
}


