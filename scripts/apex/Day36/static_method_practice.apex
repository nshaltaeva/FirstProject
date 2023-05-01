List<Integer> numberList = new List<Integer>{65,80,83,49,48};
Integer highNum = Helper.getHighestNum(numberList);
System.debug('highNum value is : ' + highNum);

System.debug(numberList + ' Sum is : ' 
                         + Helper.getTotal(numberList) );
//System.debug(numberList2 + ' Sum is : ' 
                         //+ Helper.getTotal(numberList2) );

System.debug(numberList + ' Sum is : ' 
                         + Helper.getAverage(numberList) );

List<String> names 
    = new List<String>{'Suat','Esra','Tamara','Yagut','Dzhamilya','Neslihan'};


System.debug('filteredList value is : ' + Helper.getLongerNames(names)   );
