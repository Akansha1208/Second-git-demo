public class Fitness {
    public static decimal calculateBMI(decimal bw, decimal bh){
        decimal bmi = bw/(bh*bh);
        return bmi;
    }
    public static decimal calculatePace(decimal d, decimal t){
        decimal h= t/60;
        decimal p = d/h;
        return p;
    }
}