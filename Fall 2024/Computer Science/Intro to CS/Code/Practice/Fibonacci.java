public class Fibonacci {
    public static void main(String args[]){

        int f=0; int g=1;
        for (int i = 0; i <= 10; i++) {
            System.out.println(f);
            f=f+g; //The sum of a+b = c
            g=f-g; // c-a=b... c+b=d hence we need b to compute the next Fib
        }

    }
}
