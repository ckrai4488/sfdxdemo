@isTest
public class FitnessTest {
    
    @isTest
    public static void calculateBMITest1(){
        Decimal weight = 60;
        Decimal height = 1.2;
        Decimal result = Fitness.calculateBMI(60, 1.2);
        result = result.setScale(2);
        System.assertEquals(41.67, result, 'BMI should be 41.67');
     }
    @isTest
    public static void calculateBMITest2(){
        Decimal weight = 0;
        Decimal height = 1.2;
        Decimal result = Fitness.calculateBMI(0, 1.2);
        System.assertEquals(0, result, 'BMI should be 0');
        
    }
      @isTest  
        public static void calculateBMITest3(){
        Decimal weight = 60;
        Decimal height = 0;
        Decimal result = Fitness.calculateBMI(60, 0);
        System.assertEquals(-1, result, 'Invalid Input');
        
        
     }
    @isTest
    public static void calculateBMITest4(){
        Decimal weight = -60;
        Decimal height = 1.2;
        Decimal result = Fitness.calculateBMI(-60, 1.2);
        System.assertEquals(-1, result, 'Invalid Input');
        
        
     }
    @isTest
    public static void calculateBMITest5(){
        Decimal weight = 60;
        Decimal height = -1.2;
        Decimal result = Fitness.calculateBMI(60, -1.2);
        System.assertEquals(-1, result, 'Invalid Input');
        
        
     }
    @isTest
    public static void calculatePaceTest1(){
        Decimal distance = 10;
        Decimal minutes = 60;
        Decimal result = Fitness.calculatePace(10, 60);
        System.assertEquals(10, result, 'Pace should be 10km/hr');
        
        
     }
    @isTest
    public static void calculatePaceTest2(){
        Decimal distance = 0;
        Decimal minutes = 60;
        Decimal result = Fitness.calculatePace(0, 60);
        System.assertEquals(0, result, 'Pace should be 0km/hr');
        
        
     }
    
    @isTest
    public static void calculatePaceTest3(){
        Decimal distance = 10;
        Decimal minutes = 0;
        Decimal result = Fitness.calculatePace(10, 0);
        System.assertEquals(-1, result, 'Invalid ip');
        
        
     }
    
    @isTest
    public static void calculatePaceTest4(){
        Decimal distance = -10;
        Decimal minutes = 60;
        Decimal result = Fitness.calculatePace(-10, 60);
        System.assertEquals(-1, result, 'Invalid ip');
        
        
     }
    
    @isTest
    public static void calculatePaceTest5(){
        Decimal distance = 10;
        Decimal minutes = -60;
        Decimal result = Fitness.calculatePace(10, -60);
        System.assertEquals(-1, result, 'Invalid ip');
        
        
     }
}