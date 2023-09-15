public class Friends {
	
    //Create rate card with constans
    final Integer ONLY_ONE_SLICE = 8;
    final Integer UPTO_THREE_SLICES = 7;
    final Integer MORE_THAN_THREE_SLICES = 6;
    
    public Integer getBill(Integer numberOfSlices){
        Integer billAmount= numberOfSlices == 1 ? ONLY_ONE_SLICE*numberOfSlices:
        (numberOfSlices <= 3 ? UPTO_THREE_SLICES*numberOfSlices:
        MORE_THAN_THREE_SLICES*numberOFSlices);
            
            return billAmount;
    }
    
    
    
}