/**
covid19 class
track covid 19 recovery
**/

public class Covid19{
    public Integer recoveredInArea = 0;
    public static Integer recoverdInCountry = 0;
    
	//initialization block
    {
       system.debug('Initialization block 1 is called');
       
    }
    
	//initialization block 2
    {
       system.debug('Initialization block 2 is called');
       
    }
    //static initialization block 1
    static {
       system.debug('static Initialization block 1 is called');
    }
      //static initialization block 2
    static {
       system.debug('static Initialization block 2 is called');
    }
    
    //blank constructor
    public covid19(){
        system.debug('blank constructor is called');
    }
    
    //parametrized constructor to set class variable value
    public covid19(integer recoveredInArea){
        //calling blank constructor
        this();
         system.debug('parametrized constructor is called');
    }
    
    public void treatPatient(){
        recoveredInArea++;
        recoverdInCountry++;
    }
    
    public static void getTreated(){
       system.debug('Recoverd in country : '+recoverdInCountry);
        
    }
}