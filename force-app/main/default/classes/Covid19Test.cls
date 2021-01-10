@isTest
public class Covid19Test {
    
   @isTest
    public static void treatPatientTest(){
        Covid19 jaipur = new Covid19(10);
        System.assertEquals(10, jaipur.getTreated(), 'Count Mismatch');
        
        Covid19 pune = new Covid19(112);
        System.assertEquals(112, pune.getTreated(), 'Count Mismatch');
        
        System.assertEquals(122, Covid19.recoveredInCountry, 'Count Mismatch');
        
        jaipur.treatPatient();
        System.assertEquals(11, jaipur.getTreated(), 'Count Mismatch');
        System.assertEquals(123, Covid19.recoveredInCountry, 'Count Mismatch');
       
    }
    
    @isTest
    public static void treatPatientTestNegative(){
        Covid19 jaipur = new Covid19(-10);
        System.assertEquals(0, jaipur.getTreated(), 'Count Mismatch');
}
}