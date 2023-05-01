/**
Practice
Season: Winter - boots
spring - sneakers
summer - sandals
autumn - loafers
 */

 
 String season  = 'winter';

//if/else
 if(season == 'winter'){
    System.debug('Wear your Boots');
 }else if(season == 'spring'){
    System.debug('Wear your Sneakers');
 }else if(season == 'summer'){
    System.debug('Wear your Sandals');
 }else{
    System.debug('Wear loafers');
 }

//switch method
switch on season{
    when 'winter'{System.debug('Wear your Boots');}
    when 'spring'{System.debug('Wear your Sneakers');}
    when 'summer'{System.debug('Wear your Sandals');}
    when else{System.debug('Wear loafers');}
}


List<String> names = new List<String>
{'John', 'Ken', 'Mary', 'Ben', 'John', 'Akbar', 'Arife', 'Nina', 'Arife', 'Ben'};

