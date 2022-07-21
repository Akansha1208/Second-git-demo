@isTest
public class fittest {
    @isTest
    public static void testBMI(){
         decimal bw=45;
         decimal bh=1.2;
        decimal result=Fitness.calculateBMI(bw, bh);
       system.assertEquals(31.25, result,'matched');
    }

}