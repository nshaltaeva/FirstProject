public  class Student {
    
    //firstName, lastName,grade

    public String firstName;
    public String lastName;
    public Integer studentId;

    // constructor :
    // a special block of code (similar to method)
    // get called automatically when object is being created
    // it has no return type (not even void)
    // it has same name as class name 
    public Student(){
        System.debug('Message from Constructor'); 
        this.firstName = 'unknown';
        this.lastName = 'unknown';
        this.studentId = 0;
    }

    //create another constructor
    //that accept 3 params
    // so we can allow providing the values
    // and use those values to assign instance field values
    public Student(String fName, String lName, Integer sId){
        this.firstName = fName;
        this.lastName = lName;
        this.studentId = sId;
    }




}