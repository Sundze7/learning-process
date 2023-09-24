public class Power{
  static double power(double base, int expo) {
    long result= 1;
    
    while(expo!=0) {
      result *= base;
        --expo;
   }
   System.out.println(result);

  return result ;
  }
  public static void main(String[] args) {
  
 //System.out.print(power(4,2));
 power(3,2);
  }
}
   

