//import javax.lang.model.util.ElementScanner6;

//import java.math;

public class PrimalityChecker {
    static void isPrime(int n){
        int i, flag = 0;
        for(i=2; i<= n/2; ++i){
            if(n % i == 0){
                flag = 1;
                
                break;
            }
        }
            if(flag == 0) {
                System.out.println("n is prime");
            }
            else {
                System.out.println("n is not a prime number");
                }
            
                    return;
    }
    public static void main(String[] args) {
       int n=33;
       // System.out.println(isPrime(n));
       isPrime(n);

    }
    
}