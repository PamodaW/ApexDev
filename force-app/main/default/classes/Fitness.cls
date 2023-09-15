public class Fitness {
    public  integer BMIcalculator(integer bodyWeight , Integer bodyHeight ){
        integer BMIcaluculate = bodyWeight/bodyHeight;
     
            
            return BMIcaluculate;
    }
    
    public  integer paceCalulator(integer km , integer mins){
        integer paceCalculate = (km/(mins/60));
         //mins =mins * 60;
      
            return paceCalculate;
    }
}